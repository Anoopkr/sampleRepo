FROM node:6.11.5-slim

RUN apt-get update || : && apt-get install python -y
