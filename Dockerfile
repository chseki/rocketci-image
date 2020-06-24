FROM node:12.12.0-alpine

USER circleci

RUN npm -g install @rocket.chat/apps-cli

COPY scripts/app_deploy.sh /usr/local/bin/app_deploy

RUN chmod +x /usr/local/bin/app_deploy 
