FROM node:6.11.5-alpine

RUN apt-get update || : && apt-get install python -y
