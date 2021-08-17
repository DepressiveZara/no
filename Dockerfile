FROM buildkite/puppeteer:latest

RUN apt update
RUN apt upgrade

WORKDIR /app
COPY . /app
RUN npm install
CMD ["npm", "start"]
EXPOSE 8080
