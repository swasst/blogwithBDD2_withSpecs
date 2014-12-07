Feature: Edit blog
  As a blog owner
  I want to edit my blog posts

  Scenario: Edit blog
    Given I am on the blog homepage and there is a post with title "Sample post" and content "Sample content"
    When I edit this post
    And I update title to "Updated title" and content to "Updated content"
    Then I can see it has been updated
