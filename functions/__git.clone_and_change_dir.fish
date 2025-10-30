function __git.clone_and_change_dir -d "XXX"
  set -l repo ""
  for arg in $argv
    if string match -qr '^(ssh://|git://|ftps?://|https?://|.*@.*)' '$arg'
      set repo {$arg}
      break
    end
  end
  if test -z $repo
    set repo $argv[-1]
  end

  git clone --recurse-submodules $argv; or return

  if test -d '$argv[-1]'
    cd $argv[-1]
  else
    cd (basename $repo .git)
  end
end
complete -c __git.clone_and_change_dir --wraps "git clone"

