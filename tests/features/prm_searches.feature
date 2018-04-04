@prm @prm_searches @javascript
Feature: PRM Saved Searches
  In order to use PRM saved searches
  As a NewsBank PRM user
  I need to be able to interact with my PRM saved search data

  # TODO: Add tests for creating and deleting searches when we have the option
  # to create the searches in the UI.

  Background:
    #Given I log in with username "pd5" and password "pd5"
    #And I log in to PRM with username "jilljones" and password "jilljones1"

  @prm_search_create
  Scenario: Create a "PRM Saved Search"
    #Given I am on the PRM page

  @prm_search_delete
  Scenario: Delete a "PRM Saved Search"
    #When I check "nbcore-react-browse-searches-check-0"
    #And I click the selector "#nbcore-action-button-prm-searches-delete button"
    #And I press "Are you sure?"
    #Then I should not see "XXXXXXX in All Text"
