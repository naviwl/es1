FROM ubuntu:16.04

#RUN locale-gen en_US.UTF-8
#ENV LANG en_US.UTF-8
#RUN update-locale LANG=en_US.UTF-8

RUN apt-get update
RUN apt-get install -y default-jre
RUN apt-get install -y wget 

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.5.1.deb
RUN dpkg --install ./elasticsearch-5.5.1.deb
RUN rm ./elasticsearch-5.5.1.deb

ADD elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
ADD start.sh /start.sh

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-5.5.1-amd64.deb
RUN dpkg --install ./kibana-5.5.1-amd64.deb
RUN rm ./kibana-5.5.1-amd64.deb

ADD kibana.yml /etc/kibana/kibana.yml


RUN chmod a+x /start.sh

