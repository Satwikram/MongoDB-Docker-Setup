# Check if directory exits. If exits skip.
sudo mkdir -p ./db/data/mongo
sudo mkdir -p ./db/log/mongodb

sudo chown `whoami` ./db/data/mongo   # Or substitute another user
sudo chown `whoami` ./db/log/mongodb   # Or substitute another user

mongod --dbpath ./db/data/mongo --logpath ./db/log/mongodb/mongod.log --fork