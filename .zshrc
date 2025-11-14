
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Widgets
#
# If you are looking for functions to implement moving over and editing words in the manner of bash, 
# where only alphanumeric characters are considered word characters, you can use the functions described in the next section. 
# The following is sufficient:
#

# ----- Word style (bash-like word movements) -----
autoload -Uz select-word-style
select-word-style bash

#
#
# --------------------------------------
# https://github.com/sindresorhus/pure
# --------------------------------------
#
#

# ----- Prompt (using pure theme) -----

fpath+=($HOME/.zsh/pure)

# https://wiki.archlinux.org/title/Zsh#Prompt_themes
autoload -Uz promptinit && promptinit
prompt pure

# ----- Completion -----
# initialize the completion for the current session, you need to autoload the function compinit
autoload -Uz compinit && compinit

# Completion styles
zstyle ':completion:*' menu select        # arrow-key menu selection

# Tool-specific completions (only load if available)
command -v kubectl &>/dev/null && source <(kubectl completion zsh)
command -v flux &>/dev/null && source <(flux completion zsh)
command -v docker &>/dev/null && source <(docker completion zsh)
command -v skaffold &>/dev/null && source <(skaffold completion zsh)
command -v helm &>/dev/null && source <(helm completion zsh)

# ----- Aliases -----
# $ man ls
alias ls="ls --color=always"
# https://github.com/sharkdp/bat
alias cat='bat --style=plain'

# ----- Plugins -----
# zsh-syntax-highlighting (must be sourced last)
# https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file#faq
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ----- History -----
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt SHARE_HISTORY         # Share history across tabs
setopt INC_APPEND_HISTORY    # Write history as you go
setopt HIST_IGNORE_ALL_DUPS  # No duplicate entries
setopt HIST_REDUCE_BLANKS    # Clean up extra spaces
setopt HIST_FCNTL_LOCK       # Safe concurrent access
