#!/bin/bash
docker build -t aliyun/java:8 -f Dockerfile.dockerfile .
imageId=`docker images | grep aliyun/java | awk  '{print $3}'`
echo "successfully build docker image[${imageId}]"
docker login --username=山东丰信农业服务有限公司  registry-vpc.cn-hangzhou.aliyuncs.com
docker tag ${imageId} registry-vpc.cn-hangzhou.aliyuncs.com/fengxin58/java:8
docker push registry-vpc.cn-hangzhou.aliyuncs.com/fengxin58/java:8