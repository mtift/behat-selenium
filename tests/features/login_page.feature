@login_page
Feature: Login
  In order to use NewsBank
  As a NewsBank user
  I need to be able to login to NewsBank

  Scenario: Login to the site successfully
    Given I am on "/user/login?destination=%3Fp%3DAWNB"
    Then I should see "No username and password? Click here for additional log in options."
    When I fill in "Username" with "prog"
    And I fill in "Password" with "retrev4u"
    And I press "Log in"
    Then I should see "NBCore cache (Example)"
