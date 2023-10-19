FROM nginx:alpine
MAINTAINER Tea Torovic<tea.torovic@gmail.com>

COPY ExerciseFiles/02_02_begin/website /website
COPY ExerciseFiles/02_02_begin/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

