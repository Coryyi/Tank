#/bin/bash

version=1.0-$(date +%Y%m%d%H%M%S)
sudo docker build -t tank:$version .
image_id=$(sudo docker images | grep $version | awk '{print $3}')
sudo docker tag $image_id registry.cn-hangzhou.aliyuncs.com/qingguatang/tank:$version
sudo docker push registry.cn-hangzhou.aliyuncs.com/qingguatang/tank:$version
sudo docker rmi -f $image_id
