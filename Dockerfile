FROM node:9-slim

RUN apt-get update || : && apt-get install python -y
