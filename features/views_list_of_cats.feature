@javascript
Feature: Views list of cats

  Scenario: Viewing list of cats
    Given the following cats:
      | name               | gender | breed     |
      | General Mowzer     | Male   | Sphinx    |
      | Chairman Meow      | Male   | Mang Koon |
      | Princess Buttercup | Female | Persian   |
    And I am on the root page
    Then I should see the list of cats
