FROM klakegg/hugo:0.101.0-ubuntu

ARG THEME_REPO_URL
WORKDIR /src

RUN apt-get update -y && \
    apt-get install git -y