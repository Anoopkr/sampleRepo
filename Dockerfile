FROM node:6.11.5-slim

RUN apt-get update || : && apt-get install python -y

RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN apt-get update || : && apt-get install -y apt-transport-https
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update || : && apt-get install -y aspnetcore-runtime-6.0
RUN apt-get update || : && apt-get install -y dotnet-sdk-6.0

RUN apt-get update || : && apt-get install -y zip unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# RUN apt remove --purge --auto-remove -y git
# RUN apt-get update || : && apt-get install -y software-properties-common
# RUN add-apt-repository ppa:git-core/ppa -y
# RUN apt-get update || : && apt-get install -y git

RUN apt-get update || : && apt-get install -y build-essential
RUN apt-get update || : && apt-get install -y autoconf
RUN apt-get update || : && apt-get install -y zlib1g-dev
RUN apt-get update || : && apt-get install -y asciidoc 
RUN apt-get update || : && apt-get install -y docbook2x
RUN apt-get update || : && apt-get install -y gettext
RUN wget --no-check-certificate https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.4.5.tar.gz
RUN tar -zxf git-2.4.5.tar.gz
WORKDIR git-2.4.5
RUN make configure
RUN ./configure --prefix=/usr
RUN make all doc info
RUN make install install-doc install-html install-info

# RUN wget --no-certificate-check https://mirrors.edge.kernel.org/pub/software/scm/git/git-$version.$build.tar.gz
# RUN tar -xzvf git-$version.$build.tar.gz
# WORKDIR git-$version.$build/
