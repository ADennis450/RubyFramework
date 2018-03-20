@run
Feature: Sogeti

  Scenario: Navigate To Sogeti Home Page


  Scenario: Go to Sogeti.com
    Given I navigate to "https://www.sogeti.com"
    Given I do a sogeti search for "Techonology"
    And I wait 10 seconds