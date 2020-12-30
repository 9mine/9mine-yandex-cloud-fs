FROM 9mine/9p-execfuse-jinja2:master
RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -a
ENV PATH "$PATH:/root/yandex-cloud/bin/" 
RUN yc config profile create default
RUN mkdir --mode=777 /accounts