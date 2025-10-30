function __git.push_or_push_current_branch_force -w "git push" -d "git push force, uses the current branch as a default if no or only one argument are given"
  set -l argc (count $argv)
  set -l branch $argv[1]
  if test $argc -eq 0
    set branch (__git.current_branch)
  end
  git push --force origin $branch
end

