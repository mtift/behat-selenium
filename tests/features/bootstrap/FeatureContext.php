<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
  * The Gateway product.
  */
  protected $product;

  /**
  * The login page.
  */
  protected $login_page;

  /**
  * The base PRM user page.
  */
  protected $prm_page;

  /**
  * The anonymous alert ID.
  */
  protected $saved_alert_id;

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct($parameters) {
    $this->parameters = $parameters;
    $this->product = 'AWNB';
    $this->login_page = '/user/login?destination=%3Fp%3D' . $this->product;
    $this->prm_page = '/nbcore-prm/?p%3D' . $this->product;
  }

  /**
   * @Then I click the selector :selector
   */
  public function iClickTheSelector($selector) {
    $this->getSession()->evaluateScript("jQuery('" . $selector . "').trigger('click');");
  }

  /**
   * Log in as an administrator.
   *
   * @Given I log in with username :username and password :password
   */
  public function iLogIn($username, $password) {
    $this->visitPath($this->login_page);
    $this->fillField("Username", $username);
    $this->fillField("Password", $password);
    $this->pressButton("Log in");
    $this->assertPageContainsText("NBCore cache (Example)");
  }

  /**
   * @Given I am on the PRM page
   */
  public function iAmOnThePrmPage() {
    $this->visitPath($this->prm_page);
  }

  /**
   * Log in to PRM via AJAX endpoint.
   *
   * @Given I log in to PRM with username :username and password :password
   */
  public function iAmLoggedInToPrm($username, $password) {
    $this->visitPath('/nb-prm/js/login?username=' . $username . '&password=' . $password);
    // Check that the user is logged in correctly with valid auth.
    $this->assertResponseContains('su_auth');
    // If the user was not logged in corectly, they get an annonymous ID.
    $this->assertResponseNotContains('anon_id');
  }

  /**
   * @Then I should be on the log in page
   */
  public function iShouldBeOnTheLogInPage() {
    $this->visitPath('/user/login');
    $this->assertPageContainsText('Log in');
    $this->assertPageContainsText('You will be automatically redirected to the page you requested');
  }

  /**
    * Saving a screenshot. Useful for debugging.
    *
    * @When I save a screenshot to :filename
    */
  public function iSaveAScreenshotIn($filename) {
      sleep(1);
      $this->saveScreenshot($filename, __DIR__.'/../..');
  }
}
