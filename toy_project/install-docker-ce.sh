# TODO: how to avoid doing -Y manually???

# install Docker Engine - Community package for Ubuntu

# uninstall old versions: older versions of Docker were called docker, docker.io or docker-engine. Uninstall them all.
sudo apt-get remove docker docker-engine docker.io containerd runc

# set up repository
sudo apt-get update
# sudo apt-get install apt-transport-https 
# sudo apt-get install ca-certificates
# sudo apt-get install curl 
# sudo apt-get install gnupg-agent
# sudo apt-get install software-properties-common
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify that you now have the key with the fingerprint 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88, by searching for the last 8 characters of the fingerprint.
sudo apt-key fingerprint 0EBFCD88
# pub   rsa4096 2017-02-22 [SCEA]
#       9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
# uid           [ unknown] Docker Release (CE deb) <docker@docker.com>
# sub   rsa4096 2017-02-22 [S]

# set up the stable repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install Docker CE
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# verify docker is installed correctly
sudo docker run hello-world

# verify the image
sudo docker images
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# hello-world         latest              fce289e99eb9        8 months ago        1.84kB