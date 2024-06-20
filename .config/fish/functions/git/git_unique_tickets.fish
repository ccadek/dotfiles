function git_unique_tickets
  git log $argv[1]..$argv[2] | grep -Eo '[A-Z]{3,5}-[0-9]{1,4}' |  sort -V | uniq > unique_tickets.md
end
