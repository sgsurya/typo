Feature: Create or edit Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add and edit categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create category
    Given I am on the new categories page
    When I fill in "category_name" with "Foo"
    And I fill in "category_keywords" with "Bar"
    And I fill in "category_permalink" with "NA"
    And I fill in "category_description" with "FooBar test"
    And I press "Save"
    Then I should see "Foo"
    Then I should see "Bar"
    Then I should see "NA"
    Then I should see "FooBar"
    
