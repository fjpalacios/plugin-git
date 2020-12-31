function __git_uninstall
  for abbreviation in $__git_abbreviations
      abbr -e $abbreviation
  end

  set -Ue __git_abbreviations
end
