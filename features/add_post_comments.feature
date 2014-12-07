Feature: Add comment
  As a blog visitor
  I want to input comment onto blog

  Scenario: Add comment
    Given there is a post titled with "Sample post" and content with "Sample content" and I am on the post page
    When I add a comment with the following information
      | Name | Email | Content |
      | swasst | admin@myblog.com | Test comment |
    Then I can see the comment has been added onto the post
