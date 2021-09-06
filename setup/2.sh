# Replace the version with latest stable release using GitHub developer API
sudo wget https://downloads.mongodb.com/compass/mongosh-1.0.5-linux-x64.tgz -O /downloads/mongosh.tgz
sudo tar -zxvf /downloads/mongosh.tgz -O /tmp

chmod +x /tmp/mongosh*/bin/mongosh
chmod +x /tmp/mongosh*/bin/mongocryptd-mongosh

sudo cp /tmp/mongosh*/bin/mongosh /usr/local/bin/
sudo cp /tmp/mongosh*/bin/mongocryptd-mongosh /usr/local/bin/