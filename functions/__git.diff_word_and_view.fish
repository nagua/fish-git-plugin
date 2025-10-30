function __git.diff_word_and_view -w "git diff" -d "View git diff in a readonly editor"
  if type -q nvim
    git diff -w $argv | nvim -R -
  else if type -q view
    git diff -w $argv | view -
  else if type -q vim
    git diff -w $argv | vim -R -
  end
end

