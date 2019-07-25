echo "Please download cmake-3.12.0 first."

cd ~
sudo apt-get install build-essential

yes|sudo apt-get install vim

cd cmake-3.12.0
 ./bootstrap
sudo -v
make
make install
sudo -v
yes|sudo apt-get install python-pip python-dev build-essential
sudo -v
sudo pip install --upgrade pip
sudo -v
sudo easy_install pip
sudo -v
sudo -H pip install --upgrade virtualenv

echo “”
echo “done”


