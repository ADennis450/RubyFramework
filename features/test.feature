@run
Feature: Google Search

  Scenario: Go to Google
    Given I navigate to "https://google.com"
    And I do a search for "Sogeti"
    And I click on the sogeti link
    And I wait 5 seconds
    Then I should see "Sogeti"

#    Given I navigate to "https://www.gmail.com"
#    And I put the username ""
#    And I click on the next button on "username" page
#    And I put the password ""
#    And I click on the next button on "password" page
#    And I open a new tab
#
#    Given I do a sogeti search for "Sogeti"
#    And I click on the sogeti link
#    And I wait 5 seconds
#    Then I should see "Sogeti"