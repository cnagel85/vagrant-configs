 #!/usr/bin/env bash

echo "Installing Docker..."
# Update packages
sudo apt-get -qq update
sudo apt-get -qq install -y apt-transport-https ca-certificates
# Add GPG key
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
# Add repo to apt sources
#sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
echo "Adding docker to apt sources"
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee --append /etc/apt/sources.list.d/docker.list
# Update packages
sudo apt-get -qq update
# Install Linux Image Extra
sudo apt-get -qq install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
# Install Docker
sudo apt-get -qq install -y --allow-unauthenticated docker-engine
# Create Docker Group
sudo groupadd docker
sudo usermod -aG docker $USER
