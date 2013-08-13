@javascript
Feature: Cat management

  Scenario: Viewing list of cats
    Given the following cats:
      | name               | gender | breed     |
      | General Mowzer     | Male   | Sphinx    |
      | Chairman Meow      | Male   | Mang Koon |
      | Princess Buttercup | Female | Persian   |
    And I am on the root page
    Then I should see the list of cats

  Scenario: User adds a cat
    Given I am on the root page
    When I follow "Add a cat"
    And I add a new cat
    Then I should see my cat in the list of cats
