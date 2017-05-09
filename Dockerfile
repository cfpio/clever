FROM node

# from https://console.clever-cloud.com/cli-oauth
ARG token
ARG secret


RUN npm install -g clever-tools
ENTRYPOINT ["clever"]
VOLUME $HOME/.config/clever-cloud
