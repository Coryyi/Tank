#/bin/bash

version=1.0-$(date +%Y%m%d%H%M%S)
docker build -t tank:$version .
image_id=$(docker images | grep $version | awk '{print $3}')
docker tag $image_id registry.cn-hangzhou.aliyuncs.com/qingguatang/tank:$version
docker push registry.cn-hangzhou.aliyuncs.com/qingguatang/tank:$version
docker rmi -f $image_id
