# create Dockerfile and docker image
sudo docker build -t ads .

# to verify the image
sudo docker images
# REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
# ads                 latest              e66b69abad79        3 minutes ago       515MB
# ubuntu              18.04               a2a15febcdf3        2 weeks ago         64.2MB
# hello-world         latest              fce289e99eb9        8 months ago        1.84kB

# publish dokcer image remotely
## tag your image with your docker account (it is like github setting upstream remote)
sudo docker tag ads yanggao1119/ads

sudo docker login

# push your image, image should be on docker hub
sudo docker push yanggao1119/ads
# The push refers to repository [docker.io/yanggao1119/ads]
# e601c8c62687: Pushed 
# 49bc8d3b50a8: Pushed 
# 142dd90e17dc: Pushed 
# 1c71428287b8: Pushed 
# 05b1773808e3: Pushed 
# 122be11ab4a2: Mounted from library/ubuntu 
# 7beb13bce073: Mounted from library/ubuntu 
# f7eae43028b3: Mounted from library/ubuntu 
# 6cebf3abed5f: Mounted from library/ubuntu 
# latest: digest: sha256:c72123cc0a0ab3c422d68a6f03d3fd95f4a589fef10e2f152fd6c67e911bb155 size: 2204
