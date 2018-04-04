@prm @prm_alerts @javascript
Feature: PRM Alerts
  In order to use PRM alerts
  As a NewsBank PRM user
  I need to be able to interact with my PRM alert data

  Background:
    Given I am on "/user/logout"
    When I log in with username "pd5" and password "pd5"
    And I log in to PRM with username "jilljones" and password "jilljones1"

  @prm_alert_create
  Scenario: Create a "PRM Saved Alert"
    # Start on a search results page.
    Given I am on "/search-hits-pane?p=AWNB&t=&sort=_rank_%3AD&val-base-0=Beethoven&fld-base-0=alltext"
    Then I should see "Create Alert for Beethoven in All Text"
    # The form must be visible to fill in values.
    When I follow "Create Alert"
    # The selector indicates "anonymous" but we are logged in at this point.
    And I fill in "jill@example.com" for "nbprm-create-anonymous-alert-email"
    And select "4 times a day" from "nbprm-create-anonymous-alert-frequency"
    # This creates a PRM alert on Gateway that we will delete in another test.
    And I press "Create Alert"
    # Login again to make sure the alert appears
    When I am on "/user/logout"
    And I log in with username "pd5" and password "pd5"
    And I log in to PRM with username "jilljones" and password "jilljones1"
    And I am on the PRM page
    Then I should see "Beethoven in All Text"
    And I should see "jill@example.com"
    And I should see "4 times a day"

  @prm_alert_delete
  Scenario: Delete a "PRM Saved Alert"
    Given I am on the PRM page
    When I check "nbcore-react-browse-alerts-check-0"
    And I click the selector "#nbcore-action-button-prm-alerts-delete button"
    And I press "Are you sure?"
    Then I should not see "Beethoven in All Text"
