
@run
Feature: Test Virtual Care Assistant

  Background: : Navigate to Virtual Care Assistant
    Given I navigate to "http://virtualcareassistant-env.wq7snpycas.us-east-2.elasticbeanstalk.com/"
    Then I should see "Virtual Care Assist"

  Scenario: Change instructions
    Given I click on the dropdown "arrow"
    And I click on the the medicine dropdown
    And I change the instructions

  Scenario: Fail Test
    Given I click on the dropdown "arrow"
    And I click on the the medicine dropdown
    And I make the test fail