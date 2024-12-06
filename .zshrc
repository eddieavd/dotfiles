# config files dir
export XDG_DATA_HOME=/Users/edhemavdagic/.config
export XDG_CONFIG_HOME=/Users/edhemavdagic/.config
export XDG_CACHE_HOME=/Users/edhemavdagic/.config/.cache

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# make sure we have zinit
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# load zinit
source "${ZINIT_HOME}/zinit.zsh"

# load powerlevel10k prompt
zinit ice depth=1; zinit light romkatv/powerlevel10k

# load plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
# zinit light Aloxaf/fzf-tab

# load snippets
zinit snippet OMZP::git

# load completions
autoload -U compinit && compinit

zinit cdreplay -q

# history
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

unsetopt BEEP

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# zstyle ':completion:*' menu no
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# aliases

alias    ..='cd ..'
alias   ...='cd ../..'
alias  ....='cd ../../..'
alias .....='cd ../../../..'

alias sketchybackground='(&>/dev/null sketchybar &)'

alias  start_wm='/Users/edhemavdagic/Documents/dev/sh/wm/start_wm.sh'
alias   stop_wm='/Users/edhemavdagic/Documents/dev/sh/wm/stop_wm.sh'
alias reload_wm='/Users/edhemavdagic/Documents/dev/sh/wm/reload_wm.sh'

alias c='clear'

alias ls='ls --color'
alias la='ls -lah --color'

alias vim="nvim"

alias fcd="cd \"\$(fd -t d --full-path . | fzf || echo .)\"" # fuzzy cd

alias nproc="sysctl -n hw.logicalcpu"

alias curdir="echo $PWD | pbcopy"

alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.config/nvim/init.lua'
alias tmuxconf='vim ~/.config/tmux/tmux.conf'

alias cat='bat'

# environment
eval "$(/opt/homebrew/bin/brew shellenv)"

export CC="/opt/homebrew/opt/llvm/bin/clang"
export CXX="/opt/homebrew/opt/llvm/bin/clang++"

export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib/c++ -L/opt/homebrew/opt/llvm/lib -L/opt/homebrew/opt/llvm/lib/unwind"

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

# fns

function mcdir() {
    mkdir -p $1 && cd $1
}

function sponge() {
    args=$@
    vim +":Suponjibobu $args" +q!
}

function capture() {
        sudo dtrace -p "$1" -qn '
                syscall::write*:entry
                /pid == $target && arg0 ==1/ {
                        printf( "%s", copyinstr(arg1, arg2));
                }
        '
}

TIMEFMT=$'\n\u1b[31m================\033[m\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E\n\u1b[31m================\033[m\n'

# shell integrations
eval "$(fzf --zsh)"
# eval "$(zoxide init --cmd cd zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# keybinds
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
