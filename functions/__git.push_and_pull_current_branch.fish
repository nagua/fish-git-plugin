function __git.push_and_pull_current_branch -w "git checkout" -d "git pull and push, uses the current branch as a default if no or only one argument are given"
  set -l argc (count $argv)
  if test $argc -eq 0
    __git.pull_or_pull_current_branch
    and __git.push_or_push_current_branch
  else
    __git.pull_or_pull_current_branch $argv
    and __git.push_or_push_current_branch $argv
  end
end

