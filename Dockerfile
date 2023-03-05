FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    software-properties-common \
    apt-transport-https \
    gnupg \
    curl \
    jq \
    git \
    gh \
    openjdk-17-jdk

# Install npm
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs

RUN npm install -g sfdx-cli 

RUN sfdx plugins install @salesforce/sfdx-scanner
RUN echo 'y' | sfdx plugins install sfdx-hardis
RUN echo 'y' | sfdx plugins install sfdx-git-delta

CMD ["/bin/bash"]
