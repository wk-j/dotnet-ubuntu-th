FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install apt-transport-https

RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list
RUN apt-get update

RUN apt-get install -y vim
RUN apt-get install -y locales
RUN apt-get install -y lsb-core

RUN locale-gen th_TH.UTF-8
ENV LANG='th_TH.UTF-8' LANGUAGE='th_TH.UTF-8' LC_ALL='th_TH.UTF-8'

RUN apt-get install -y --allow-unauthenticated dotnet-sdk-2.0.3

RUN mkdir /app/
WORKDIR /app/

ENV DOTNET_CLI_UI_LANGUAGE=en-US

CMD ["/bin/bash"]
