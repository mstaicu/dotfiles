#
# ssh-agent creates a socket and an environment variable named $SSH_AUTH_SOCK.
#
# This environment variable contains the filepath of the socket that the ssh-agent
# uses for communications for other processes
#
# Over-writing this to use Secretive app
#
export SSH_AUTH_SOCK=/Users/mircea/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

export CLICOLOR=1
export BAT_THEME='gruvbox-dark'

eval "$(/opt/homebrew/bin/brew shellenv)"
