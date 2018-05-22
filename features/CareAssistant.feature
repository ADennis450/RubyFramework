
@run
Feature: Test Virtual Care Assistant

  Scenario: Test Virtual Care Assistant
    Given I navigate to "http://virtualcareassistant-env.wq7snpycas.us-east-2.elasticbeanstalk.com/"
    Then I should see "Virtual Care Assist"
    And I click on the dropdown "arrow"
    And I wait 5 seconds
    And I click on the the medicine dropdown
    And I wait 5 seconds
    And I change the instructions
    And I wait 50 seconds