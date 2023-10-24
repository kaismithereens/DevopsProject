FROM ruby:alpine
MAINTAINER Tea Torovic<tea.torovic@gmail.com>

RUN apk add build-base ruby-nokogiri
RUN gem install rspec capybara selenium-webdriver 

ENTRYPOINT [ "rspec" ]
