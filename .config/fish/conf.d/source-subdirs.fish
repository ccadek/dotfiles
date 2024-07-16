#
# The next two settings are taken from https://www.reddit.com/r/fishshell/comments/176ahss/tip_you_can_use_function_subfolders_with_this/.
#

# add function subdirs to fish_function_path. Basically any function inside of a folder in functions/ will also be added to the path
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# add completion subdirs to fish_completion_path.
set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path


