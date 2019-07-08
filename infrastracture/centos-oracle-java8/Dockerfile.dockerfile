FROM centos:7.3.1611

WORKDIR /opt

COPY jdk-8u121-linux-x64.gz jdk-8u121-linux-x64.gz
COPY jce_policy-8.zip jce_policy-8.zip

RUN tar -xvf jdk-8u121-linux-x64.gz
RUN yum install -y unzip
RUN unzip jce_policy-8.zip
RUN cp -rf UnlimitedJCEPolicyJDK8/*.jar  jdk1.8.0_121/jre/lib/security/
RUN rm -rf jdk-8u121-linux-x64.gz
RUN rm -rf jce_policy-8.zip
RUN rm -rf UnlimitedJCEPolicyJDK8

# set timezone
ENV TZ Asia/Shanghai 
# set lang
ENV LC_ALL en_US.utf8
ENV LANG en_US.UTF-8

WORKDIR /

ENV JAVA_HOME /opt/jdk1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin
# docker build -t aliyun/java:8 -f Dockerfile.dockerfile .
# docker login --username=山东丰信农业服务有限公司 registry.cn-hangzhou.aliyuncs.com
# docker tag 1034d07ed83e registry.cn-hangzhou.aliyuncs.com/fengxin58/java:8
# docker push registry.cn-hangzhou.aliyuncs.com/fengxin58/java:8
