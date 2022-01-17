FROM node:16.13.1-alpine

RUN apt-get update || : && apt-get install python -y
