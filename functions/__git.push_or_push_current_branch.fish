function __git.push_or_push_current_branch -w "git push" -d "git push, uses the current branch as a default if no or only one argument are given"
  set -l argc (count $argv)
  if test $argc -ne 0 && test $argc -ne 1
    git push origin $argv
  else
    set -l branch $argv[1]
    if test $argc -eq 0
      set branch (__git.current_branch)
    end
    git push origin "$branch"
  end
end

