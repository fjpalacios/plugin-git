function __git_install
    function __git_abbr -d "Create git abbreviation"
        set -l abbreviation $argv[1]
        set -l command $argv[2..-1]
        set -a __git_abbreviations $abbreviation

        abbr -a $abbreviation $command
    end

    set -U __git_abbreviations


    #
    # Aliases
    # (sorted alphabetically)
    #

    __git_abbr g git

    __git_abbr ga git add
    __git_abbr gaa git add --all
    __git_abbr gapa git add --patch
    __git_abbr gau git add --update
    __git_abbr gav git add --verbose
    __git_abbr gap git apply
    __git_abbr gapt git apply --3way

    __git_abbr gb git branch
    __git_abbr gba git branch -a
    __git_abbr gbd git branch -d
    __git_abbr gbda 'git branch --no-color --merged | command grep -vE "^(\+|\*|\s*((__git_main_branch)|development|develop|devel|dev)\s*$)" | command xargs -n 1 git branch -d'
    __git_abbr gbD git branch -D
    __git_abbr gbl git blame -b -w
    __git_abbr gbnm git branch --no-merged
    __git_abbr gbr git branch --remote
    __git_abbr gbs git bisect
    __git_abbr gbsb git bisect bad
    __git_abbr gbsg git bisect good
    __git_abbr gbsr git bisect reset
    __git_abbr gbss git bisect start

    __git_abbr gc git commit -v
    __git_abbr gc! git commit -v --amend
    __git_abbr gcn! git commit -v --no-edit --amend
    __git_abbr gca git commit -v -a
    __git_abbr gca! git commit -v -a --amend
    __git_abbr gcan! git commit -v -a --no-edit --amend
    __git_abbr gcans! git commit -v -a -s --no-edit --amend
    __git_abbr gcam git commit -a -m
    __git_abbr gcsm git commit -s -m
    __git_abbr gcb git checkout -b
    __git_abbr gcf git config --list
    __git_abbr gcl git clone --recurse-submodules
    __git_abbr gclean git clean -id
    __git_abbr gpristine 'git reset --hard && git clean -dffx'
    __git_abbr gcm 'git checkout (__git_main_branch)'
    __git_abbr gcd git checkout develop
    __git_abbr gcmsg git commit -m
    __git_abbr gco git checkout
    __git_abbr gcount git shortlog -sn
    __git_abbr gcp git cherry-pick
    __git_abbr gcpa git cherry-pick --abort
    __git_abbr gcpc git cherry-pick --continue
    __git_abbr gcs git commit -S

    __git_abbr gd git diff
    __git_abbr gdca git diff --cached
    __git_abbr gdcw git diff --cached --word-diff
    __git_abbr gdct 'git describe --tags (git rev-list --tags --max-count=1)'
    __git_abbr gds git diff --staged
    __git_abbr gdt git diff-tree --no-commit-id --name-only -r
    __git_abbr gdw git diff --word-diff

    __git_abbr gf git fetch
    __git_abbr gfa git fetch --all --prune
    __git_abbr gfo git fetch origin

    __git_abbr gfg 'git ls-files | grep'

    __git_abbr gg git gui citool
    __git_abbr gga git gui citool --amend

    __git_abbr ggf 'git push --force origin (__git_current_branch)'
    __git_abbr ggfl 'git push --force-with-lease origin (__git_current_branch)'

    __git_abbr ggl 'git pull origin (__git_current_branch)'

    __git_abbr ggp 'git push origin (__git_current_branch)'

    __git_abbr ggpnp 'ggl && ggp'

    __git_abbr ggu 'git pull --rebase origin (__git_current_branch)'

    __git_abbr ggpur ggu
    __git_abbr ggpull 'git pull origin (__git_current_branch)'
    __git_abbr ggpush 'git push origin (__git_current_branch)'

    __git_abbr ggsup 'git branch --set-upstream-to=origin/(__git_current_branch)'
    __git_abbr gpsup 'git push --set-upstream origin (__git_current_branch)'

    __git_abbr ghh git help

    __git_abbr gignore git update-index --assume-unchanged
    __git_abbr gignored 'git ls-files -v | grep "^[[:lower:]]"'
    __git_abbr git-svn-dcommit-push 'git svn dcommit && git push github (__git_main_branch):svntrunk'

    __git_abbr gk gitk --all --branches
    __git_abbr gke 'gitk --all (git log -g --pretty=%h)'

    __git_abbr gl git pull
    __git_abbr glg git log --stat
    __git_abbr glgp git log --stat -p
    __git_abbr glgg git log --graph
    __git_abbr glgga git log --graph --decorate --all
    __git_abbr glgm git log --graph --max-count=10
    __git_abbr glo git log --oneline --decorate
    __git_abbr glol git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
    __git_abbr glols git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat
    __git_abbr glod git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'
    __git_abbr glods git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short
    __git_abbr glola git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all
    __git_abbr glog git log --oneline --decorate --graph
    __git_abbr gloga git log --oneline --decorate --graph --all

    __git_abbr gm git merge
    __git_abbr gmom 'git merge origin/(__git_main_branch)'
    __git_abbr gmt git mergetool --no-prompt
    __git_abbr gmtvim git mergetool --no-prompt --tool=vimdiff
    __git_abbr gmum 'git merge upstream/(__git_main_branch)'
    __git_abbr gma git merge --abort

    __git_abbr gp git push
    __git_abbr gpd git push --dry-run
    __git_abbr gpf git push --force-with-lease
    __git_abbr gpf! git push --force
    __git_abbr gpoat 'git push origin --all && git push origin --tags'
    __git_abbr gpu git push upstream
    __git_abbr gpv git push -v

    __git_abbr gr git remote
    __git_abbr gra git remote add
    __git_abbr grb git rebase
    __git_abbr grba git rebase --abort
    __git_abbr grbc git rebase --continue
    __git_abbr grbd git rebase develop
    __git_abbr grbi git rebase -i
    __git_abbr grbm 'git rebase (__git_main_branch)'
    __git_abbr grbs git rebase --skip
    __git_abbr grev git revert
    __git_abbr grh git reset
    __git_abbr grhh git reset --hard
    __git_abbr groh 'git reset origin/(__git_current_branch) --hard'
    __git_abbr grm git rm
    __git_abbr grmc git rm --cached
    __git_abbr grmv git remote rename
    __git_abbr grrm git remote remove
    __git_abbr grs git restore
    __git_abbr grset git remote set-url
    __git_abbr grss git restore --source
    __git_abbr grt cd "(git rev-parse --show-toplevel || echo .)"
    __git_abbr gru git reset --
    __git_abbr grup git remote update
    __git_abbr grv git remote -v

    __git_abbr gsb git status -sb
    __git_abbr gsd git svn dcommit
    __git_abbr gsh git show
    __git_abbr gsi git submodule init
    __git_abbr gsps git show --pretty=short --show-signature
    __git_abbr gsr git svn rebase
    __git_abbr gss git status -s
    __git_abbr gst git status

    __git_abbr gsta git stash save

    __git_abbr gstaa git stash apply
    __git_abbr gstc git stash clear
    __git_abbr gstd git stash drop
    __git_abbr gstl git stash list
    __git_abbr gstp git stash pop
    __git_abbr gsts git stash show --text
    __git_abbr gstu git stash --include-untracked
    __git_abbr gstall git stash --all
    __git_abbr gsu git submodule update
    __git_abbr gsw git switch
    __git_abbr gswc git switch -c

    __git_abbr gts git tag -s
    __git_abbr gtv 'git tag | sort -V'

    __git_abbr gunignore git update-index --no-assume-unchanged
    __git_abbr gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
    __git_abbr gup git pull --rebase
    __git_abbr gupv git pull --rebase -v
    __git_abbr gupa git pull --rebase --autostash
    __git_abbr gupav git pull --rebase --autostash -v
    __git_abbr glum 'git pull upstream (__git_main_branch)'

    __git_abbr gwch git whatchanged -p --abbrev-commit --pretty=medium
    __git_abbr gwip 'git add -A; git rm (git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"'

    __git_abbr gam git am
    __git_abbr gamc git am --continue
    __git_abbr gams git am --skip
    __git_abbr gama git am --abort
    __git_abbr gamscp git am --show-current-patch

    functions -e __git_abbr
end
