FROM nginx: alpine
MAINTENER Tea Torovic<tea.torovic@gmail.com>

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

