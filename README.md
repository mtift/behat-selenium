## Requirements
* Docker ([Community Edition](https://docs.docker.com/install/))
* [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
* [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Includes
* [PHP7](https://php.net)
* [Composer](https://getcomposer.org/)
* [Behat](http://behat.org)
* [Mink](http://mink.behat.org)
* [MinkExtension](https://github.com/Behat/MinkExtension)
* [Behat Drupal Extension](https://www.drupal.org/project/drupalextension)
* Selenium ([Standalone Chrome](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneChrome) and [Standalone Firefox](https://github.com/SeleniumHQ/docker-selenium/tree/master/StandaloneFirefox))

## Installation
1. `git clone git@github.com:mtift/behat-selenium.git`

## Usage
1. Move to the necessary directory: `cd behat-selenium/tests`
1. Start docker: `docker-compose up -d`
1. Run all tests: `./run-behat`

## Customize
* To test your site, add features in the `tests/features` directory.
* Run `./run-behat -dl` to see a list of available gherkin commands.
* Add custom gherkin commands to `tests/features/bootstrap/FeatureContext.php`.
* Use the @javascript tag to test your javascript code.
* Use the @api tag to test your Drupal code.

## Related
* To run the tests for a single feature: `./run-behat features/drupal.feature`
* To test a different site, change the "base_url" value in `tests/behat.yml`.
* Shut down docker: `docker-compose down`
* To view the HTML report of your tests, visit `http://<your-docker-host-ip>:8000/html_report` (e.g. `http://localhost:8000/html_report`) or open `behat-selenium/tests/html_report/index.html`

## Notes
* This project was created as a PHP-specific replacement for [Selenium IDE tests](https://www.seleniumhq.org/projects/ide/)
* This project was inspired by:
    * https://hub.docker.com/r/bergil/docker-behat/
    * https://hub.docker.com/r/docksal/behat/
