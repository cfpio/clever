FROM node

# from https://console.clever-cloud.com/cli-oauth

RUN npm install -g clever-tools
COPY restart.sh /root/restart.sh
CMD /root/restart.sh
