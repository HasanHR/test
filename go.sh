#!/bin/bash

go_install () {
VERSION="1.20.4"  # Replace with the desired Go version

# Download and install Go
echo "Downloading Go version $VERSION"
wget "https://golang.org/dl/go$VERSION.linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf "go$VERSION.linux-amd64.tar.gz"

# Set up environment variables
echo "Setting up environment variables"
echo 'export PATH=$PATH:/usr/local/go/bin' >> $GITHUB_ENV

# printing installed go version
go version
}

go_install
fi
