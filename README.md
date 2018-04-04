# Requirements
* Docker

# Features
* PHP7
* Composer
* Behat
* MinkExtension

# Usage
1. `git clone git@github.com:mtift/behat-selenium.git`
1. `cd behat-selenium`
1. `docker build -t local-behat-selenium .`
1. `docker run --rm -v $(pwd):/src local-behat-selenium --colors`
