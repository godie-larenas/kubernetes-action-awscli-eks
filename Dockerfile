FROM alpine:3.17.5

ARG KUBECTL_VERSION="1.15.10"

RUN apk update
RUN apk add curl
RUN apk add aws-cli

    
RUN curl -L -o /usr/bin/kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.15.10/2020-02-22/bin/linux/amd64/kubectl
RUN chmod +x /usr/bin/kubectl
RUN aws --version

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

