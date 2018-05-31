#! /bin/bash
alias cd='cd -P'
alias cd='cl'
alias rm='rm -ri'
alias cp='cp -RHi'
alias mv='gmv -i'
alias mkdir='mkdir -p'
alias ..='cl ..'
alias df='df -h'
alias ln='ln -si'
alias disk='diskutil'
alias part='partutil'
alias dd='gdd status=progress bs=4M'
alias srit='source $HOME/.bashrc'
alias pbc='pbcopy'
alias grep='ggrep --color=auto'
alias dirs='dirs -v'
alias history='history | less'
alias du='du -xa | sort -rn'
alias stat='stat -Ll'
alias j='jobs'
alias f='fg'
alias g='grep'
alias ping='ping -c 1'
alias em='emacs'
alias goo='google'
alias webs='google webster'
alias sed='gsed'
alias e='echo -e'
alias less="$PAGER"
alias dircolors="gdircolors"
alias python="python3"
###################
#-------saved paths
###################
alias mackupdir='cd $(dirname $(readlink $HOME/.bashrc))'
alias abletondir='cd /Volumes/Izi/Ableton/_projects/time-killer\ Project'
###################
#--------ls aliases
###################
if [[ "$(uname -s)" =~ Darwin ]]; then
  #on mac use gnu ls. BSD ls: ls -Gph
  alias ls='gls -ph --color=always'
else
  alias ls='ls -ph --color=always'
fi
alias la='ls -A'
alias ll='ls -lSAi'
alias lt='ls -ltAi'
###################
#-----internet guys
###################
alias wget='wget -c'
alias histg="history | grep"
alias myip='curl http://ipecho.net/plain; echo'
###################
#-----brew and cask
###################
alias cask='brew cask'
alias brewi='brew info'
alias caski='brew cask info'
alias brewl='brew list'
alias caskl='brew cask list'
alias brews='brew search'
alias casks='brew cask search'
alias brewh='brew home'
alias caskh='brew cask home'
alias brewI='brew install'
alias caskI='brew cask install'
###################
#---------------git
###################
alias gits='git status'
alias gs='git status'
alias gitca='git commit -a'
alias gca='git commit -a'
alias gitc='git commit'
alias gitl='git log'
# alias gl='git log' #conflicts with "grep -l" gl func()
alias gith='git checkout'
alias gh='git checkout'
alias gita='git add'
alias gitaa='git add --all'
alias gitb='git branch'
alias gb='git branch'
alias gitd='git diff'
alias gitp='git push'
alias gp='git push'
alias gitm='git merge'
alias gitr='git reset'
alias gamend='git commit --amend'
###################
#--------bash files
###################
alias bashrc='code        ~/.bashrc'
alias bashaliases='code   ~/.bash_aliases'
alias bashfunctions='code ~/.bash_functions'
alias bashps1='code       ~/.bash_ps1'
###################
#----------mistakes
###################
alias loca='local'
alias emcas='emacs'
alias emasc='emcas'
alias me='emacs'
###################
#------------webdev
###################
alias caniuse='caniuse --mobile'
alias cani='caniuse'
alias mdn='google mdn'
alias watchsass="sass --watch css/index.sass:css/index.css 2>/dev/null 1>&2 &"
alias twoSpacesOnly="gsed -n -e '/^  [^ ]/p'"
alias webb="webbot.sh"
alias publi="publish.sh"
alias sshhost="ssh -p 21098 -i ~/.ssh/id_rsa tazemuad@server179.web-hosting.com"
alias sshh="sshhost"
alias sftphost="sftp -P 21098 -i ~/.ssh/id_rsa tazemuad@server179.web-hosting.com"
alias gpglist="gpg --list-secret-keys --keyid-format LONG"
alias gpgexport="gpg --armor --export"
alias gpgkeygen="gpg --full-generate-key"
alias simplePrompt="PS1='\n\[\e[1;90m\w \e[0m\]\n$ ' && PROMPT_COMMAND=''"
alias npml="npm list --depth=0"
alias npmgl="npm list --global --depth=0"
alias npms="npm search"
alias npmh="npm repo"
alias npmI="npm install"
alias yarnl="yarn list --depth=0"
alias yarngl="yarn global list --depth=0"
alias yarns="npm search"
alias yarnh="npm repo"
alias yarnI="yarn add"
###################
#------------Zsh
###################
alias ...=../.....
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..
alias g=git
alias ga='git add'
alias gaa='git add --all'
alias gap='git apply'
alias gapa='git add --patch'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcsm='git commit -s -m'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdcw='git diff --cached --word-diff'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias ggpull='git pull origin $(git_current_branch)'
alias ggpur=ggu
alias ggpush='git push origin $(git_current_branch)'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias ghh='git help'
alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=%h)'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias globurl='noglob urlglobber '
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --all'
alias glp=_git_log_prettily
alias glum='git pull upstream master'
alias gm='git merge'
alias gma='git merge --abort'
alias gmom='git merge origin/master'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/master'
alias gp='git push'
alias gpd='git push --dry-run'
alias gpoat='git push origin --all && git push origin --tags'
alias gpristine='git reset --hard && git clean -dfx'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpu='git push upstream'
alias gpv='git push -v'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'
alias gsb='git status -sb'
alias gsd='git svn dcommit'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
alias gts='git tag -s'
alias gtv='git tag | sort -V'
alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'