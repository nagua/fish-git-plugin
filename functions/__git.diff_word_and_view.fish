function __git.diff_word_and_view -d "XXX"
  if type -q nvim
    git diff -w $argv | nvim -R -
  else if type -q view
    git diff -w $argv | view -
  else if type -q vim
    git diff -w $argv | vim -R -
  end
end
complete -c __git.diff_word_and_view --wraps "git diff"

