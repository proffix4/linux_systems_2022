# Note that the following steps are not necessary in Ubuntu Pro
# Install the latest UA client
sudo apt update
sudo apt install ubuntu-advantage-tools

# Use the client to attach this machine to your contract using your UA token
sudo ua attach C121i3Ko62QUdbA8KwT73NxrNQ85Md
# Ensure ESM-infra is enabled as well:

sudo ua enable esm-infra 

sudo apt update
sudo apt upgrade

sudo ua status
