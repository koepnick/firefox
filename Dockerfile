FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y firefox
RUN groupadd -g 1000 firefox
RUN useradd -d /home/firefox -s /bin/bash -m firefox -u 1000 -g 1000
USER firefox
ENV HOME /home/firefox
CMD /usr/bin/firefox
