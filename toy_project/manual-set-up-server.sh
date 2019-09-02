###################### ec2 and rds
ssh -i ad_key.pem ubuntu@ec2-3-87-22-58.compute-1.amazonaws.com

sudo apt-get update
sudo apt-get install python-pip

# Flask is a Python micro web framework
sudo pip install flask
sudo pip install flask_session

# MySQL client
sudo apt-get install mysql-client
sudo apt install default-libmysqlclient-dev
sudo pip install mysqlclient

## AWS CLI and Python utils
sudo pip install awscli
sudo pip install boto3

## launch server with command
FLASK_APP=server.py flask run --host=0.0.0.0 -ort=8080

## craete a temp dir to store temp uploaded files
mkdir -p /tmp/upload_tmp

## test server http://ec2-3-87-22-58.compute-1.amazonaws.com:8080/