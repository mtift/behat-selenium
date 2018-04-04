@javascript
Feature: Drupal entry in wikipedia
  As Wikipedia user
  I should be able to find information about Drupal

  Scenario: Open the Drupal article in Wikipedia and find text
    Given I am on "/wiki/Drupal"
    Then I should see "Drupal became an open source project in 2001"
    When I follow "Dries Buytaert"
    Then I should see "born 19 November 1978 in Wilrijk"
