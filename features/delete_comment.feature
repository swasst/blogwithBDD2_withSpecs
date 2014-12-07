Feature: Delete comment
  As a blog owner
  I want to delete comment

  Scenario: Delete comment
    Given there is a post titled with "Sample post" and content with "Sample content"
    And there is a comment on this post
    When I am on the post page
    And I click "Delete Comment"
    Then the comment should be deleted

