Feature: User can manually add new dictionary

  Scenario: Add a dictionary
    Given I am on the dictionary list page
    When I follow "Add A New Dictionary"
    Then I should be on the Create New Dictionary page
