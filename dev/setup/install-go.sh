 #!/usr/bin/env bash

echo "Installing Go $1..."

# Download golang archive
GOARCHIVE="go$1.linux-amd64.tar.gz"
echo "downloading archive"
wget --quiet https://storage.googleapis.com/golang/$GOARCHIVE

if [ ! -f $GOARCHIVE ]; then
	echo "Could not find file [$GOARCHIVE]"
else
	echo "Found file, extracting"
	# Extract archive to proper location
	tar -C /usr/local -xzf $GOARCHIVE
	# Delete archive
	rm $GOARCHIVE
	# Set Paths
	echo export PATH=$PATH:/usr/local/go/bin >> .profile
	# Make go projects folder in home and set GOPATH in .profile
	mkdir -p /home/ubuntu/shared/go_projects/src
	echo export GOPATH=/home/ubuntu/shared/go_projects >> .profile
fi
