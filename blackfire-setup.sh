#!/usr/bin/env bash

# Configure Blackfire Repository
wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -
echo "deb http://packages.blackfire.io/debian any main" | tee /etc/apt/sources.list.d/blackfire.list

# Install Blackfire Agent and Probe
apt update && apt install blackfire-agent blackfire-php -y

# Configure Blackfire
blackfire-agent --register --server-id=$BLACKFIRE_SERVER_ID --server-token=$BLACKFIRE_SERVER_TOKEN
blackfire config --client-id=$BLACKFIRE_CLIENT_ID --client-token=$BLACKFIRE_CLIENT_TOKEN
