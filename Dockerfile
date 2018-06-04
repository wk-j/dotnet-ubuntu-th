FROM ubuntu:16.04

RUN mkdir /app
WORKDIR /app

RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install -y locales

RUN wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb

RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get install apt-transport-https -y
RUN apt-get update -y
RUN apt-get install dotnet-sdk-2.1 -y
RUN locale-gen th_TH.UTF-8

ENV LANG='th_TH.UTF-8' LANGUAGE='th_TH.UTF-8' LC_ALL='th_TH.UTF-8'
ENV DOTNET_CLI_UI_LANGUAGE=en-US

CMD ["/bin/bash"]
