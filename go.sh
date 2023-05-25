go_install () {
#!/bin/bash

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


swag_install () {
go install github.com/swaggo/swag/cmd/swag@latest
version=$(swag --version 2>&1)
if [ $? -eq 0 ]; then
  echo "Swag version: $version"
else
  echo "Swag is not installed or an error occurred."
}


go_install
swag_install
fi
