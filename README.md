# Requirements
* Docker

# Features
* PHP7
* Composer
* Behat
* MinkExtension

# Installation
1. `git clone git@github.com:mtift/behat-selenium.git`
1. `cd behat-selenium`
1. `docker build -t local-behat-selenium .`

# Usage
1. `cd tests`
1. `docker-compose up -d`
1. `./run-behat features/wikipedia.feature`

# Credits
This project was inspired by:
* https://hub.docker.com/r/bergil/docker-behat/
* https://hub.docker.com/r/docksal/behat/
