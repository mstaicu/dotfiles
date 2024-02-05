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
# Configure the prompt
# https://github.com/sindresorhus/pure
# --------------------------------------
#
#
fpath+=($HOME/.zsh/pure)
#
autoload -U promptinit; promptinit
prompt pure
#
# man ls
#
alias ls="ls --color=always"
#
#  https://github.com/sharkdp/bat
#
alias cat='bat --style=plain'
#
# https://www.atlassian.com/git/tutorials/dotfiles
#
alias config='/usr/bin/git --git-dir=/Users/mircea/.cfg/ --work-tree=/Users/mircea'
#
# https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file#faq
#
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh