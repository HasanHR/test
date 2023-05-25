VERSION="1.20.4" # go version
ARCH="amd64" # go archicture
# Instead of curl, one can use wget command too #
curl -sL https://golang.org/dl/ | grep -A 5 -w "go${VERSION}.linux-${ARCH}.tar.gz"
echo "b3b815f47ababac13810fc6021eb73d65478e0b2db4b09d348eefad9581a2334 *go${VERSION}.linux-${ARCH}.tar.gz" | shasum -a 256 --check
sudo chown -R root:root ./go
sudo mv -v go /usr/local
vim ~/.bash_profile
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin