@javascript
Feature: Javascript testing
  As an Internet user
  I should be able to navigate through website pages using Nav buttons

  Scenario: Open Wikipedia and find text
    Given I am on "https://en.wikipedia.org/wiki/Free_software"
    Then I should see "Free software or libre software"
