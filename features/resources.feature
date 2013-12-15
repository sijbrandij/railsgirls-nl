Feature: Managing resources
  As a user I want to be able to manage resources

  Scenario: Adding new resource
    Given I visit the resource page
    When I indicate I want to add a new resource
    And I fill and submit the form
    Then I should see new resource created
