## Requirements
* Docker ([Community Edition](https://docs.docker.com/install/))
* [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Features
* PHP7
* Composer
* Behat
* MinkExtension
* Selenium ([Standalone Chrome](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneChrome) and [Standalone Firefox](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefox))

## Installation
1. `git clone git@github.com:mtift/behat-selenium.git`

## Usage
1. Move to the necessary directory: `cd behat-selenium/tests`
1. Start docker: `docker-compose up -d`
1. Run all tests: `./run-behat`

## Related
* Run the tests for a single feature: `./run-behat features/wikipedia.feature`
* Show a list of gherkin commands: `./run-behat -dl`
* To test a different site, change the "base_url" value in `tests/behat.yml`.
* Shut down docker: `docker-compose down`
* To view the HTML report of your tests, visit `http://<your-docker-host-ip>:8000/html_report` (e.g. `http://localhost:8000/html_report`) or open `behat-selenium/tests/html_report/index.html`

## Credits
This project was inspired by:
* https://hub.docker.com/r/bergil/docker-behat/
* https://hub.docker.com/r/docksal/behat/
