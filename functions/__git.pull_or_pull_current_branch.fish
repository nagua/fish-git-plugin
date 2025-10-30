function __git.pull_or_pull_current_branch -d "XXX"
  set -l argc (count $argv)
  if test $argc -ne 0 && test $argc -ne 1
    git pull origin $argv
  else
    set -l branch $argv[1]
    if test $argc -eq 0
      set branch (__git.current_branch)
    end
    git pull origin "$branch"
  end
end
complete -c __git.pull_or_pull_current_branch --wraps "git pull"

