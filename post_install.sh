#!/bin/bash

sudo sed 's/# deb/deb/' -i /etc/apt/sources.list
sudo apt-get update

sudo apt-get install git npm git-flow openjdk-8-jdk

git clone https://github.com/trucknet-io/trucknet-boilerplate-typescript-react-native.git
rm -rf .git
git init
git remote add origin
git flow init
nvm install
sed 's/trucknet-boilerplate-typescript-react-native/trucknet-boilerplate-typescript-react-native $(Date)/g' package.json
sed 's/TrucknetBoilerplateTypescriptReactNative/TrucknetBoilerplateTypescriptReactNative $(Date)/g' app.json


npx react-native eject
npx app-icon generate

git clone https://github.com/facebook/jest.git
npm install tslint-config-trucknet-io -D

git clone https://github.com/trucknet-io/tslint-config-trucknet-io.
npm remove prettier
rm .prettierrc

npm i -D prettier-config-trucknet-io
echo 'module.exports = require("prettier-config-trucknet-io");' > .prettierrc.js

https://github.com/trucknet-io/trucknet-commit.git
npm remove husky lint-staged git-cz commitizen commitizen-* @commitlint*
rm .huskyrc .lintstagedrc .czrc
npm i -D trucknet-commit
Add "commit": "commit-prompt" script to package.json

#VisualStudio
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

#zsh
sudo apt install zsh
chsh -s $(which zsh)
sh -c "\$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Node and NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
sed '/plugins/nvm' ~/.zshrc
nvm install
npm update -g npm

sudo apt install unzip libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo unzip path-to-android-studio-linux.zip -d /opt
rm path-to-android-studio-linux.zip
sudo ln -s /opt/android-studio/bin/studio.sh /usr/local/bin/android-studio
android-studio
