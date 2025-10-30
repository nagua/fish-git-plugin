function __git.pull_or_pull_current_branch -w "git pull" -d "git pull, uses the current branch as a default if no or only one argument are given"
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

