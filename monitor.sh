
# Kill existing session
tmux kill-session -t monitor
tmux new -d -s monitor

# split windows
tmux split-window -v
tmux select-pane -t 0
tmux split-window -v
tmux select-pane -t 2
tmux split-window -h

# resize windows
tmux resize-pane -t 0 -y 2
tmux resize-pane -t 1 -y 3

# load several monitor windows
tmux send-keys -t monitor.0 "watch docker ps" C-m
tmux send-keys -t monitor.1 "gpustat -pi 1" C-m
tmux send-keys -t monitor.2 "nmon" C-m
tmux send-keys -t monitor.3 "htop" C-m
tmux send-keys -t monitor.2 "d" C-m
