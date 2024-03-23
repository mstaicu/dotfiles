#
# ssh-agent creates a socket and an environment variable named $SSH_AUTH_SOCK.
#
# This environment variable contains the filepath of the socket that the ssh-agent
# uses for communications for other processes
#
# Over-writing this to use Secretive app
#
export SSH_AUTH_SOCK=/Users/mircea/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
#
#
export CLICOLOR=1
export BAT_THEME='gruvbox-dark'
#
#
# Exporting the variable makes it available to child processes of the shell, ensuring that it's visible when you run commands or start new processes. Without the export keyword, the variable is only available within the current shell session and won't be passed to child processes
#
# Set PURE_GIT_PULL=0 to prevent Pure from checking whether the current Git remote has been updated.
#
export PURE_GIT_PULL=0
