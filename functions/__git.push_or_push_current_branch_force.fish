function __git.push_or_push_current_branch_force -d "XXX"
  set -l argc (count $argv)
  set -l branch $argv[1]
  if test $argc -eq 0
    set branch (__git.current_branch)
  end
  git push --force origin $branch
end
complete -c __git.push_or_push_current_branch_force --wraps "git push"

