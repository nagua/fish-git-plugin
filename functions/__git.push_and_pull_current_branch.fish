function __git.push_and_pull_current_branch -d "XXX"
  set -l argc (count $argv)
  if test $argc -eq 0
    __git.pull_or_pull_current_branch
    and __git.push_or_push_current_branch
  else
    __git.pull_or_pull_current_branch $argv
    and __git.push_or_push_current_branch $argv
  end
end
complete -c __git.push_and_pull_current_branch --wraps "git checkout"

