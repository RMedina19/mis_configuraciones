# Reference for installations 
# Last updated: July 14th
# Note: This is a reference script and is not supposed to be run directly

# For reproducibility
# 1. Install tmux in new machine 
# 2. Create tmux config file
# 3. Install dependencies
# 4. Copy config from repo to local computer

# tmux
brew install tmux 
touch ~/.tmux.conf


# tpm for pluggins installations (plugins are install from .tmux.conf file)
# Ref: https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Reload config 
tmux source ~/.tmux.conf


