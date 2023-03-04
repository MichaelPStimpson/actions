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

# Install Yarn
RUN npm install -g yarn

# Install Salesforce CLI (sfdx)
RUN curl -fsSL https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz | tar xJf - \
    && cd sfdx-cli-v* \
    && echo "y" | ./install

# Install sfdx plugins
RUN yarn global add sfdx-cli \
    && yarn global add @salesforce/sfdx-scanner \
    && yarn global add sfdx-hardis \
    && yarn global add sfdx-git-delta --non-interactive --no-cache


CMD ["/bin/bash"]
