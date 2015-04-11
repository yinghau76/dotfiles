#!/bin/sh
export PATH=$PATH:/usr/local/bin

# abort if we're already inside a TMUX session
[ "$TMUX" == "" ] || exit 0

# startup a "default" session if none currently exists
tmux has-session -t _default || tmux new-session -s _default -d

# present menu for user to choose which workspace to open
PS3="Please choose your session: "
options=($(tmux list-sessions -F "#S") "new session" "bash" "zsh")
select opt in "${options[@]}"
do
    case $opt in
        "new session")
            read -p "Enter new session name: " SESSION_NAME
            tmux new -s "$SESSION_NAME"
            break
            ;;
        "bash")
            bash --login
            break;;
        "zsh")
            zsh --login
            break;;
        *)
            tmux attach-session -t $opt
            break
            ;;
    esac
done
