FROM alpine
MAINTAINER Tea Torovic<tea.torovic@gmail.com>

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_linux_amd64.zip && \
	unzip /tmp/terraform.zip -d / && \
	apk add --no-cache ca-certificates curl
USER nobody
ENTRYPOINT [ "/terraform" ]
