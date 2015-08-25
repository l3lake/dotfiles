#!/usr/bin/env bash
# |------------------------------------------------------------------------------
# | Aliases
# | https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions
# |------------------------------------------------------------------------------

# |------------------------------------------------------------------------------
# | Navigating and Listing
# |------------------------------------------------------------------------------
alias ll="ls -lhA"
#alias ls="ls -CF"
alias sl="ls"
alias lsl="ls -lhFA | less"
alias l="ls -lFh"
alias lS="ls -1FSsh"
alias la="ls -lAFh"
alias lart="ls -1Fcart"
alias ldot="ls -ld .*"
#alias ll="ls -l"
alias lr="ls -tRFh"
alias lrt="ls -1Fcrt"
alias ls="ls --color=tty"
alias lsa="ls -lah"
alias lsl="ls -lhFA | less"
alias lt="ls -ltFh"
alias fhere="find . -name "
#alias -="cd -"
alias .="cd .."
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias c="clear"
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."
alias cd.....="cd ../../../.."
alias cp="cp -i"
alias 1="cd -"
alias 2="cd -2"
alias 3="cd -3"
alias 4="cd -4"
alias 5="cd -5"
alias 6="cd -6"
alias 7="cd -7"
alias 8="cd -8"
alias 9="cd -9"
alias CA="2>&1 | cat -A"
alias G="| grep"
alias H="| head"
alias L="| less"
alias LL="2>&1 | less"
alias M="| most"
alias NE="2> /dev/null"
alias NUL="> /dev/null 2>&1"
alias P="2>&1| pygmentize -l pytb"
alias T="| tail"
alias _="sudo"
alias afind="ack-grep -il"
alias ag="apt-get"
alias d="dirs -v | head -10"
alias du="ncdu"
alias dud="du -d 1 -h"
alias duf="du -sh *"
alias fd="find . -type d -name"
alias ff="find . -type f -name"
alias fhere="find . -name "
alias free="free -mt"

# |------------------------------------------------------------------------------
# | System
# |------------------------------------------------------------------------------
alias s="sudo"
alias sag="sudo apt-get"
alias ag="apt-get"
alias c="clear"
alias df="df -Tha -total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias vba="vim ~/.bash_aliases"
alias sba="source ~/.bash_aliases"

# |------------------------------------------------------------------------------
# | Docker Aliases
# |------------------------------------------------------------------------------
# dip = Getting the IP address
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias drm="docker rm"
alias drmi="docker rmi"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias d="docker"
alias ds="docker stop"
alias dst="docker start"
alias de="docker-enter"
alias dim="docker images"
alias din="docker inspect"
alias vha="vim ~/haproxy-config/haproxy.cfg"
alias dln="docker ps --no-trunc | awk '{print $NF}'"

# Remove all stopped containers
# alias drmc="docker rm $(docker ps -a -q)"

# |------------------------------------------------------------------------------
# | Vim
# |------------------------------------------------------------------------------
alias v="vim"
alias svi="sudo vi"
alias svim="sudo vim"

# Get the id of last run container example:
# $ docker run ubuntu echo hello world
#   hello world
# $ dl
#   19824759274
# $ sudo docker commit `dl` helloworld
#   fdo892cf4fh
alias dl="docker ps -l -q"

# |------------------------------------------------------------------------------
# | Misc
# |------------------------------------------------------------------------------
alias mkdir="mkdir -pv"
#alias wget="wget =c"
alias top="htop"
alias du="ncdu"
alias df="dfc -Tadiso"
alias myip="curl http://ipecho.net/plain; echo"
alias h=history
alias help=man
alias hgrep="fc -El 0 | grep"
alias history="fc -l 1"
alias j=jobs
alias md="mkdir -p"
alias mkdir="mkdir -pv"
alias mv="mv -i"
alias myip="curl http://ipecho.net/plain; echo"
alias p="ps -f"
alias please=sudo
alias po=popd
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias pu=pushd
alias rd=rmdir
alias rm="rm -i"
alias s=sudo
alias sag="sudo apt-get"
alias sgrep="grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS} "
alias sl=ls
alias sortnr="sort -n -r"
alias svi="sudo vi"
alias svim="sudo vim"
alias t="tail -f"
alias top=htop
alias unexport=unset
alias whereami=display_info
alias which-command=whence

# |------------------------------------------------------------------------------
# | Homebrew & Cask
# |------------------------------------------------------------------------------
alias hb="brew"
alias hbi="brew install"
alias hbin="brew info"
alias hbu="brew uninstall"
alias hbl="brew list"
alias hbup="brew update"
alias hbug="brew upgrade"
alias hbv="brew versions"
alias hbd="brew doctor"
alias hbc="brew cleanup"
alias hbrb="brew uninstall ruby-build && brew install --HEAD ruby-build"
alias hbc="brew cask"
alias hbci="brew cask install"
alias hbcin="brew cask info"
alias hbcu="brew cask uninstall"
alias hbcl="brew cask list"
alias hbcup="brew cask update"
alias hbcug="brew cask upgrade"
alias hbcv="brew cask versions"
alias hbcd="brew cask doctor"
alias hbcc="brew cask cleanup"

# |------------------------------------------------------------------------------
# | Git
# |------------------------------------------------------------------------------
alias g="git"
alias ga="git add"
alias gap="git add --patch"
alias gb="git branch"
alias gba="git branch -a"
alias gbr="git branch --remote"
alias gc="git commit -v"
alias gc!="git commit -v --amend"
alias gca="git commit -v -a"
alias gca!="git commit -v -a --amend"
alias gcl="git config --list"
alias gclean="git reset --hard && git clean -dfx"
alias gcm="git checkout master"
alias gcmsg="git commit -m"
alias gco="git checkout"
alias gcount="git shortlog -sn"
alias gcp="git cherry-pick"
alias gcs="git commit -S"
alias gd="git diff"
alias gdc="git diff --cached"
alias gdt="git difftool"
alias gg="git gui citool"
alias gga="git gui citool --amend"
alias gignore="git update-index --assume-unchanged"
alias gignored="git ls-files -v | grep '^[[:lower:]]''"
alias git-svn-dcommit-push="git svn dcommit && git push github master:svntrunk"
alias gk="gitk --all --branches"
alias gl="git pull"
alias glg="git log --stat --max-count=10"
alias glgg="git log --graph --max-count=10"
alias glgga="git log --graph --decorate --all"
alias glo="git log --oneline --decorate --color"
alias globurl="noglob urlglobber "
alias glog="git log --oneline --decorate --color --graph"
#alias glp=_git_log_prettily
alias gm="git merge"
alias gmt="git mergetool --no-prompt"
alias gp="git push"
alias gpoat="git push origin --all && git push origin --tags"
alias gr="git remote"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbi="git rebase -i"
alias grep="grep --color"
alias grh="git reset HEAD"
alias grhs="git reset HEAD~1 --soft"
alias grhh="git reset HEAD --hard"
alias grmv="git remote rename"
alias grrm="git remote remove"
alias grset="git remote set-url"
alias grt="cd \$(git rev-parse --show-toplevel || echo '.')"
alias grup="git remote update"
alias grv="git remote -v"
alias gsd="git svn dcommit"
alias gsps="git show --pretty=short --show-signature"
alias gsr="git svn rebase"
alias gss="git status -s"
alias gst="git status"
alias gsta="git stash"
alias gstd="git stash drop"
alias gstp="git stash pop"
alias gsts="git stash show --text"
alias gts="git tag -s"
alias gunignore="git update-index --no-assume-unchanged"
alias gunwip="git log -n 1 | grep -q -c '\-\-wip\-\-' && git reset HEAD~1"
alias gup="git pull --rebase"
alias gvt="git verify-tag"
alias gwc="git whatchanged -p --abbrev-commit --pretty=medium"
alias gwip='git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--"'

# From https://github.com/bkuhlmann/dotfiles
#alias gi = "git init"
#alias gcle = "git config --local --edit"
#alias gcge = "git config --global --edit"
#alias gget = "git config"
#alias gst = "git status --short --branch"
#alias gl = 'git log --graph --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset)"'
#alias gld = 'git log --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset) %n%b" --stat'
#alias glh = 'git log --pretty=format:%H -1 | _copy_and_print'
#alias gln = "git log --name-status"
#alias glf = 'git fetch && git log ..@{upstream} --graph --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset)"'
#alias gls = 'git log --pretty=format:"%C(yellow)%H%C(reset) %C(bold blue)%an%C(reset) %s%C(bold cyan)%d%C(reset) %C(green)(%cr)%C(reset)" -S'
#alias glt = 'git log --tags --simplify-by-decoration --pretty = "format:%d (%ad)" --date=short | sed -e "s/ (tag: //" -e "s/)//" -e "/^ /d"'
#alias grl = "git reflog"
#alias gg = "git grep"
#alias glast = "git show --stat"
#alias guthors = "git log --format = '%an' | sort | uniq -c | sort --reverse"
#alias gd = "git diff"
#alias gdc = "git diff --cached"
#alias gdm = "git diff origin/master"
#alias gdw = "git diff --word-diff"
#alias gdt = "git difftool"
#alias gdtc = "git difftool --cached"
#alias gdtm = "git difftool origin/master"
#alias gwc = "git whatchanged -p --pretty=medium"
#alias glame = "git blame"
#alias gb = "git branch --verbose"
#alias gba = "git branch --all"
#alias gbn = "git rev-parse --abbrev-ref HEAD | _copy_and_print"
#alias gbr = "git branch --move"
#alias gm = "git merge"
#alias gms = "git merge --squash"
#alias gcl = "git clone"
#alias gch = "git checkout"
#alias gchm = "git checkout master"
#alias ga = "git add"
#alias gau = "git add --update"
#alias gap = "git add --patch"
#alias gall = "git add --all ."
#alias gco = "git commit"
#alias gca = "git commit --all"
#alias gcm = "git commit --message"
#alias gcam = "git commit --all --message"
#alias gamend = "git commit --amend"
#alias gamendh = "git commit --all --amend --reuse-message HEAD"
#alias gcf = "git commit --fixup"
#alias gcp = "git cherry-pick"
#alias gash = "git stash save"
#alias gashc = "git stash clear"
#alias gf = "git fetch"
#alias gfp = "git fetch --prune"
#alias gpu = "git pull"
#alias gpur = "git pull --rebase" # Rebase the current branch on top of the upstream branch.
#alias gpuro = "gpur origin" # Rebase the current branch on top of the upstream origin branch.
#alias gpurom = "gpuro master" # Rebase the current branch on top of the upstream origin master branch.
#alias grc = "git rebase --continue"
#alias gra = "git rebase --abort"
#alias geady = "git rebase -i @{upstream}" # Interactive rebase.
#alias gp = "git push"
#alias gpo = "git push --set-upstream origin"
#alias gpr = "git push review master"
#alias gps = "git push stage stage:master"
#alias gpp = "git push production production:master"
#alias gtag = "git tag"
#alias gtags = "git push --tags"
#alias gr = "git reset" # Unstage staged files for commit.
#alias grs = "git reset --soft HEAD^" # Uncommit previous commit.
#alias grh = "git reset --hard HEAD" # Reset to HEAD, destroying all staged/unstaged changes.
#alias gdis = "git reset --hard" # Reset to commit (hash), destroying all committed changes up to specific commit.
#alias grev = "git revert" # Revert a previous commit (hash).
#alias glatest = "git for-each-ref --sort=-committerdate refs/heads --format = '%(committerdate:short) %(refname:short)'"
#alias ggc = "git fsck && git gc"
#alias grp = "git remote prune origin"alias #

# |------------------------------------------------------------------------------
# | Functions
# |------------------------------------------------------------------------------
# Create directory and move into it
mcd () {
    mkdir -p $1
    cd $1
}

# |------------------------------------------------------------------------------
# | Extract
# |------------------------------------------------------------------------------
# | https://github.com/xvoland/Extract/blob/master/extract.sh
function extract {
    if [ -z "$1" ]; then
        display usage if no parameters given
            echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz>"
    else
        if [ -f $1 ] ; then
            NAME=${1%.*}
            mkdir $NAME && cd $NAME
                case $1 in
                    *.tar.bz2)   tar xvjf ../$1    ;;
                    *.tar.gz)    tar xvzf ../$1    ;;
                    *.tar.xz)    tar xvJf ../$1    ;;
                    *.lzma)      unlzma ../$1      ;;
                    *.bz2)       bunzip2 ../$1     ;;
                    *.rar)       unrar x -ad ../$1 ;;
                    *.gz)        gunzip ../$1      ;;
                    *.tar)       tar xvf ../$1     ;;
                    *.tbz2)      tar xvjf ../$1    ;;
                    *.tgz)       tar xvzf ../$1    ;;
                    *.zip)       unzip ../$1       ;;
                    *.Z)         uncompress ../$1  ;;
                    *.7z)        7z x ../$1        ;;
                    *.xz)        unxz ../$1        ;;
                    *.exe)       cabextract ../$1  ;;
                    *)           echo "extract: '$1' - unknown archive method" ;;
                esac
            else
                echo "$1 - file does not exist"
        fi
    fi
}
