# Sever monitor

This repository contains quick server monitor for various purpose.

# Setup

1. Clone this repository
2. Install prerequisite
```
sudo apt-get install tmux nmon htop
sudo pip3 install gpustat
```
3. Change privilage as `chmod 755 ./monitor.sh`

# Execute
1. Execute `./monitor.sh`
2. `tmux attach -t monitor` to see the monitor
3. `Ctrl-b d` to detach

# Disclaimer

## Configuration without docker
If your server did not configured docker, then remove `tmux send-keys -t monitor.0 "watch docker ps" C-m` from script.

## Tmux session name as `monitor`
If you have created tmux session named as `monitor`, this script will kill that session. If so, find workaround methods...
