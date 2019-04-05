function tn --description 'Start or reattach to tmux session'
	tmux -u new-session -A -s $argv
end
