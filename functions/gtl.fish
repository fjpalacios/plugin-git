function gtl -a prefix
  git tag --sort=-v:refname -n -l $prefix
end
