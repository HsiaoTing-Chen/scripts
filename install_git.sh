apt-get -y install build-essential libssl-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip
wget https://github.com/git/git/archive/v2.9.0.zip
unzip v2.9.0.zip
rm v2.9.0.zip
cd git-2.9.0
make prefix=/usr/local -j8 all
make prefix=/usr/local install
cd ..
rm -rf git-2.9.0

git config --global user.name "banyh"
git config --global user.email banyhong@gliacloud.com