FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl
RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -a
ENV PATH "$PATH:/root/yandex-cloud/bin/" 
RUN yc config profile create default