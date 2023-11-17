FROM jenkins/jenkins:alpine
MAINTAINER Tea Torovic <tea.torovic@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt

USER root

RUN mkdir /var/jenkins-home

RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt

EXPOSE 8081

