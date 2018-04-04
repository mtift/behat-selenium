@branding
Feature: NewsBank Branding
  In order to see branding
  As a NewsBank user
  I need to be able to see customer branding

  @customer_branding
  Scenario Outline: Various users should see different customer branding
    Given I am on "/user/login?destination=%3Fp%3DAWNB"
    When I fill in "Username" with <username>
    And I fill in "Password" with <username>
    And I press "Log in"
    Then I should see a ".header__customer-branding" element
    And I should see a <type> element
    And I should see <see>
    And I should not see <not see>

  Examples:
    | username | type                                | see                       | not see                   |
    | "pd3"    | ".header__customer-branding--xhtml" | "My Branding"             | "A text branding example" |
    | "pd5"    | ".header__customer-branding--image" | "Site-Install"            | "A text branding example" |
    | "pd20"   | ".header__customer-branding--text"  | "A text branding example" | "My Branding"             |

  @no_customer_branding
  Scenario: Login to the site as pd15
    Given I am on "/user/login?destination=%3Fp%3DAWNB"
    When I fill in "Username" with "pd15"
    And I fill in "Password" with "pd15"
    And I press "Log in"
    Then I should not see a ".header__customer-branding--xhtml" element
    And I should not see a ".header__customer-branding--image" element
    And I should not see a ".header__customer-branding--text" element
