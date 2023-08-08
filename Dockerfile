FROM public.ecr.aws/aws-cli/aws-cli:latest

ARG KUBECTL_VERSION="1.15.10"


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
