Feature: Free Software entry in wikipedia
  As Wikipedia user
  I should be able to find information about free software

  Scenario: Open the Free Software article in Wikipedia and find text
    Given I am on "/wiki/Free_software"
    Then I should see "Free software or libre software"
