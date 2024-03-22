#
# https://zsh.sourceforge.io/Doc/Release/User-Contributions.html#Widgets
#
# If you are looking for functions to implement moving over and editing words in the manner of bash, 
# where only alphanumeric characters are considered word characters, you can use the functions described in the next section. 
# The following is sufficient:
#
autoload -U select-word-style
select-word-style bash
#
#
# --------------------------------------
# https://github.com/sindresorhus/pure
# --------------------------------------
#
#
fpath+=($HOME/.zsh/pure)

# https://wiki.archlinux.org/title/Zsh#Prompt_themes
autoload -U promptinit; promptinit

# initialize the completion for the current session, you need to autoload the function compinit
autoload -U compinit; compinit

prompt pure

#
# $ man ls
#
alias ls="ls --color=always"

#
#  https://github.com/sharkdp/bat
#
alias cat='bat --style=plain'

#
# https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file#faq
#
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
