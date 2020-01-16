FROM katalonstudio/katalon:latest
RUN apt-get update && apt-get install -y golang-go \
    jq
ENV GOPATH=~/go
RUN mkdir ~/go
RUN wget -O sops https://github.com/mozilla/sops/releases/download/3.3.0/sops-3.3.0.linux && chmod +x sops
RUN mv sops /usr/local/bin/
