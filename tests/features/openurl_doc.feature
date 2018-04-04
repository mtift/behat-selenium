@openurl @openurl_doc
Feature: OpenURL document tests
  In order to restrict access for NewsBank's openURL doc links
  As a NewsBank OpenURL doc user
  I should be redirected to the log in page when I try to access other parts of the site

  Background: I visit an OpenURL doc link
    Given I am on "/user/logout"
    When I am on "openurl?ctx_ver=z39.88-2004&rft_id=info%3Asid/louie.newsbank.com&svc_dat=AWNB&req_dat=7142240A436B40EBAD38DFFD69CA7D7F&rft_val_format=info%3Aofi/fmt%3Akev%3Amtx%3Actx&rft_dat=document_id%3Anews%252F16645B57984C7198"
    Then the url should match "testing-doc-pane"
    And I should see "news/16645B57984C7198"

  Scenario Outline: Clicking on various links redirects to log in page
    When I follow <link>
    Then I should be on the log in page

  Examples:
    | link                |
    | "Previous document" |
    | "Next document"     |
    | "Return to Results" |

  Scenario: Source browse links do not work
    When I am on "source-browse?p=AWNB&t=pubname%3ATPIC%21Times-Picayune%2C%2BThe%2B%28New%2BOrleans%2C%2BLA%29"
    Then I should be on the log in page
