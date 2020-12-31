function grename -a old new
  if test (count $argv) -ne 2
    echo "Usage: grename old_branch new_branch"
    return 1
  end
  git branch -m $old $new
  git push origin :$old
  and git push --set-upstream origin $new
end
