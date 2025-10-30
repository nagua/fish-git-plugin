function __git.diff_without_lock -d "XXX"
  git diff $argv ":(exclude)package-lock.json" ":(exclude)*.lock"
end
complete -c __git.diff_without_lock --wraps "git diff"

