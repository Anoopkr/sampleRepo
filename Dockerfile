FROM node:6.11.5-slim

RUN apt-get update || : && apt-get install python -y

RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN apt-get update || : && apt-get install -y apt-transport-https
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb
RUN apt-get update || : && apt-get install -y aspnetcore-runtime-6.0
