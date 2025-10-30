function __git.develop_branch -d "Checks and returns the develop branch if existing. Falls back to develop"
  command git rev-parse --git-dir &>/dev/null; or return
  for branch in dev devel develop development
    if command git show-ref -q --verify refs/heads/{$branch}
      echo $branch
    end
  end

  echo develop
end

