@run
Feature: Google Search

  Scenario: Go to Google
    Given I navigate to "https://www.google.com"
    Given I do a sogeti search for "Sogeti"
    And I click on the sogeti link
    And I wait 5 seconds
    Then I should see "Sogeti"