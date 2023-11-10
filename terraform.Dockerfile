FROM hashicorp/terraform:latest  
MAINTAINER Tea Torovic<tea.torovic@gmail.com>

WORKDIR /terraform  

COPY . .  

ENTRYPOINT ["terraform"]
