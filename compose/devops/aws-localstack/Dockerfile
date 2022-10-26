FROM amazonlinux:latest

RUN amazon-linux-extras install python3.8 -y && \
    yum update -y && \
    pip3.8 install awscli

ADD ./src/aws-config.txt /root/.aws/config
ADD ./src/aws-credentials.txt /root/.aws/credentials

RUN set -eux; \
    cd /root; \
    { \
    echo "alias aws='f(){ /usr/local/bin/aws --endpoint-url=http://localstack:4566 \"\$@\"; }; f'"; \
    } | tee .bashrc; 