# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/vojtechzicha/.oh-my-zsh"

# Fix directory rights
ZSH_DISABLE_COMPFIX=true


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions kubectl)

source $ZSH/oh-my-zsh.sh

# User configuration

## Add completions

fpath=(/usr/local/share/zsh/site-functions $fpath)

## Add basic aliases

alias brup="brew update && brew upgrade && brew upgrade --cask && mas upgrade"

alias c='code'
alias c.='code .'
alias c..='cd ..'

alias cat='bat'
alias ls="exa"
# Show lots of info, even with icons!
alias lss="exa -alh --icons --git-ignore"

mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

alias zshrc='code ~/.zshrc'
alias restart='exec zsh'

# Open the current repository in Gitup
alias g="gitup"
# Create a new Branch
alias gb="git checkout -b"
# Show the current status of the repo
alias gs="git status --short"
# Stage some files
alias ga="git add -v"
# Stage all files
alias gaa="ga -A"
# Make a commit
alias gc="git commit -m"
# Add all changes, amend the last commit, and force push
alias gaf="gaa && git amend && gp -f"

gitPush()
{
    # If in a git repo - call git mv. otherwise- call mv
    if [[ $(git config "branch.$(git rev-parse --abbrev-ref HEAD).merge") == '' ]];
    then
        git push -u --porcelain "$@"
    else
        git push --porcelain "$@"
    fi
}
# Push to origin and set the upstream if necessary
alias gp=gitPush

# Delete merged branches
alias gcb="git checkout master && git pull && git branch --merged master | egrep -v 'next|master' | xargs -I % sh -c 'git branch -d %; git config --get branch.%.merge && git push origin -d %'"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(zoxide init zsh)"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/vojtechzicha/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

secret () {
        output=~/"${1}".$(date +%s).enc
        gpg --encrypt --armor --output ${output} -r 0x909C5713A7BE46A3 "${1}" && echo "${1} -> ${output}"
}

reveal () {
        output=$(echo "${1}" | rev | cut -c16- | rev)
        gpg --decrypt --output ${output} -r 0x909C5713A7BE46A3  "${1}" && echo "${1} -> ${output}"
}

# eval $(gpg-agent --daemon)
GPG_TTY=$(tty)
export GPG_TTY
if [ -f "${HOME}/.gpg-agent-info" ]; then
    . "${HOME}/.gpg-agent-info"
    export GPG_AGENT_INFO
    export SSH_AUTH_SOCK
fi

yubirestart () {
    echo "kill gpg-agent"
    code=0
    while [ 1 -ne $code ]; do
        killall gpg-agent
        code=$?
        sleep 1
    done

    echo "kill ssh"
    killall ssh

    echo "kill ssh muxers"
    for pid in `ps -ef | grep ssh | grep -v grep | awk '{print $2}'`; do
        kill $pid
    done

    echo "restart gpg-agent"
    eval $(gpg-agent --daemon)

    echo
    echo "All done. Now unplug / replug the NEO token."
    echo
}