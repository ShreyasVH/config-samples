FROM node:alpine

RUN npm install -g verdaccio

ENTRYPOINT ["verdaccio"]
CMD ["--config", "/config/config.yaml"]