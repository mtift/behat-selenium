@prm @prm_articles @javascript
Feature: PRM Saved Articles
  In order to use PRM
  As a NewsBank PRM user
  I need to be able to interact with my PRM article data

  Background:
    Given I am on "/user/logout"
    When I log in with username "pd5" and password "pd5"
    And I log in to PRM with username "jilljones" and password "jilljones1"

  @prm_article_create
  Scenario: Create a "PRM Saved Article"
    # TODO: Create the article via the endpoint until we have a UI option.
    Given I am on "/nb-prm/js/articles/create?product=AWNB&docref=news/11210ADBE6F6B496&tags=sarge"
    Then I should see "saved_article_id"
    And I am on the PRM page
    Then I should see "sarge (1)"
    Then I should see "Debian Project Embraces OSDL Carrier Grade Specification"

  @prm_article_update
  Scenario: Update a "PRM Saved Article"
    Given I am on the PRM page
    Then I should see "sarge (1)"
    When I check "nbcore-react-browse-articles-check-0"
    And I press "Update Folder"
    And select "__NEW__" from "folder-modal__save-to"
    And I fill in "OSDL" for "folder-modal__new-folder"
    And I click the selector "#folder-modal__form > input"
    Then I should see "OSDL (1)"

  @prm_article_delete
  Scenario: Delete a "PRM Saved Article"
    Given I am on the PRM page
    Then I should see "OSDL (1)"
    When I check "nbcore-react-browse-articles-check-0"
    And I click the selector "#nbcore-action-button-prm-articles-delete button"
    And I press "Are you sure?"
    Then I should not see "OSDL (1)"
    Then I should not see "Debian Project Embraces OSDL Carrier Grade Specification"
