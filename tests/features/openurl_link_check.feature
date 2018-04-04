@openurl @openurl_link_check
Feature: Login
  In order to ensure that invalid OpenURLs do not work
  As a Newsbank user with an invalid OpenURL
  I need to be directed to the login page

  Background:
    Given I am on "/user/logout"

  @openurl_invalid_alert_id
  Scenario: Visit an OpenURL link with an invalid alert ID
    When I am on "openurl?ctx_ver=z39.88-2004&rft_dat=alert_id%3ANO_ALERT_ID_HERE%2Fdti%3A08%252F18%252F2017%2B3%253A32am%2B-%2B08%252F18%252F2017%2B9%253A33am%2FYMD_date%3A07%252F18%252F2017%2B-%2B08%252F18%252F2017%2Fsort%3A_rank_%253AD&rft_id=info:sid/platform:alert&rft_val_format=info:ofi/fmt:kev:mtx:ctx&svc_dat=AWNB&req_dat=7142240A436B40EBAD38DFFD69CA7D7F"
    Then I should see "Sorry, we cannot process this openURL"
      And I should not see "Search Hits Content Pane"
      And I should not see "Document Navigator"

  @openurl_missing_alert_id
  Scenario: Visit an OpenURL link with an missing alert ID
    When I am on "openurl?ctx_ver=z39.88-2004&rft_dat=dti%3A08%252F18%252F2017%2B3%253A32am%2B-%2B08%252F18%252F2017%2B9%253A33am%2FYMD_date%3A07%252F18%252F2017%2B-%2B08%252F18%252F2017%2Fsort%3A_rank_%253AD&rft_id=info:sid/platform:alert&rft_val_format=info:ofi/fmt:kev:mtx:ctx&svc_dat=AWNB&req_dat=7142240A436B40EBAD38DFFD69CA7D7F"
    Then I should see "Sorry, we cannot process this openURL"
      And I should not see "Search Hits Content Pane"
      And I should not see "Document Navigator"
