function __git.diff_without_lock -w "git diff" -d "View the git diff without lock file changes"
  git diff $argv ":(exclude)package-lock.json" ":(exclude)*.lock"
end

