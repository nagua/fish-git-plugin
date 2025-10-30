function __git.log_prettily -w "git log" -d "Show git log with a pretty format as first argument"
  if test -n "$argv[1]"
    git log --pretty=\"$argv[1]\"
  end
end

