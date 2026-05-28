local function parse_ls_cmd(path)
  if vim.fn.has 'win32' then return 'dir "' .. path .. '" /b' end

  return 'ls ' .. path
end

local function append_jvms(jvms, paths)
  for file in io.popen(parse_ls_cmd(paths)):lines() do
    local jvm_version = string.match(file.path, '%S+$')
    table.insert(jvms, {
      name = 'JavaSE-' .. jvm_version, -- name is highly important and need to look like JavaSE-25 or similar. Hava a look at https://github.com/mfussenegger/nvim-jdtls#java-xy-language-features-are-not-available and ExecutionEnvironment in https://github.com/eclipse-jdtls/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
      path = file.path,
      default = false,
    })
  end
end

function Installed_jvms()
  local jvms = {}

  append_jvms(jvms, os.getenv 'HOME' .. '/.jdks') -- JVM's installed by IntelliJ
  append_jvms(jvms, '/usr/lib/jvm') -- OpenJDK installed in Arch

  return jvms
end
