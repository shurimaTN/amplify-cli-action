FROM node:lts

LABEL "com.github.actions.name"="GitHub action for AWS Amplify"
LABEL "com.github.actions.description"="This action builds and deploys your AWS Amplify project"
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/desklabs-creative/amplify-cli-action"
LABEL "homepage"="https://github.com/desklabs-creative/amplify-cli-action.git"

LABEL org.opencontainers.image.source=https://github.com/desklabs-creative/amplify-cli-action

RUN npm install --global --unsafe-perm @aws-amplify/cli@latest

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

