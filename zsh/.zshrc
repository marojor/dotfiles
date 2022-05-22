source $HOME/.zsh/base16-shell/base16-shell.plugin.zsh


# Path to your oh-my-zsh installation.
export ZSH="/Users/marojor/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump kops)

source $ZSH/oh-my-zsh.sh

# User configuration

# alias ohmyzsh="mate ~/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias src="cd ~/sysdig/src"

HISTSIZE=10000000
SAVEHIST=10000000
#setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

export PATH="/usr/local/opt/python@3.9/libexec/bin:$PATH"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
#export PATH="/usr/local/opt/coreutils/libexec/gnubin/:$PATH"
export PATH="${HOME}/sysdig/src/scratch/QA/tools:$PATH"
export PATH="${HOME}/sysdig/src/utils:$PATH"
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
alias kc="kubectl --namespace sysdigcloud"
alias ka="kubectl --namespace sysdig-agent"

alias rgrep="grep -r"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
alias base64="/usr/local/bin/gbase64"
alias awk="/usr/local/bin/gawk"

PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

snip()
{
  AWS_PAGER="" aws ec2 describe-instances --filter "Name=tag:Name,Values=\"$1\"" --query "Reservations[*].Instances[*].[PublicIpAddress, PublicDnsName]" --output=text
}


eval "$(direnv hook zsh)"
source <(kubectl completion zsh)

alias venv="source venv/bin/activate"
DURATION=$((16 * 3600))
alias aws-mfa="docker run -it -v ~/.aws:/aws -e AWS_PROFILE=default -e DURATION=$DURATION docker.internal.sysdig.com/utils/aws-mfa:latest"

source ~/sysdig/.sysdigrc

eval "$(jenv init -)"

eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/completion.zsh
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
