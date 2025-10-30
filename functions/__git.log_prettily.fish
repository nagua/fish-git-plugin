function __git.log_prettily -d "XXX"
  if test -n "$argv[1]"
    echo --pretty=\"$argv[1]\"
  end
end
complete -c __git.log_prettily --wraps "git log"

