sudo apt-get install libcurl4 openssl liblzma5
# Replace the version with latest stable release using GitHub developer API
sudo mkdir /downloads
sudo wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-debian10-5.0.2.tgz -O /downloads/mongodb.tgz
sudo tar -zxvf /downloads/mongodb.tgz -C /tmp
sudo cp /tmp/mongodb-linux-x86_64-debian*/bin/* /usr/local/bin/

