Feature: Managing resources
  As a user I want to be able to manage resources

  Background:
    Given that I am a logged in user
    And I visit the resource page

  Scenario: Adding new resource
    When I indicate I want to add a new resource
    And I fill and submit the form
    Then I should see new resource created
