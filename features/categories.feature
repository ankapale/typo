Feature: Categories Page
  As a blog admin
  In order to properly categorize
  I want to be able to add categories to my blog
  
  Background: 
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "Books"
    And I fill in "category_keywords" with "Sapiens"
    And I fill in "category_permalink" with "Yuval Noah Harari"
    And I fill in "category_description" with "Amazing book"
    And I press "Save"
    Then I should see "Books"
    And I should see "Sapiens"
    And I should see "Yuval Noah Harari"
    And I should see "Amazing book"
    
  Scenario: Successfully edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Books"
    And I fill in "category_keywords" with "Sapiens"
    And I fill in "category_permalink" with "Yuval Noah Harari"
    And I fill in "category_description" with "Amazing book"
    And I press "Save"
    Then I should be on the new categories page
    And I follow "Books"
    And I fill in "category_keywords" with "Homo Deus"
    And I press "Save"
    Then I should see "Homo Deus"
    And I should not see "Sapiens"
