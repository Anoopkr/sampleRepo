FROM node:16.13.1-alpine

RUN yum update || : && yum install python -y
