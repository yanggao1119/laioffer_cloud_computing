# create a new EC2 instance

# change security group to ec2_proj
# add its private IP to RDS inbound access

# TODO: credential file does not work, command line works
# credentials file in .aws

# ssh to it and install docker
ssh -i ad_key.pem ubuntu@ec2-34-227-161-4.compute-1.amazonaws.com

# pull docker image
sudo docker pull yanggao1119/ads

# start docker container
sudo docker run -p 8080:8080 -e AWS_ACCESS_KEY_ID=$1 -e AWS_SECRET_ACCESS_KEY=$2 yanggao1119/ads

# test with web url http://ec2-34-227-161-4.compute-1.amazonaws.com:8080/

# to view logging output, using container id
sudo docker logs -f 64c5cfac8bad
