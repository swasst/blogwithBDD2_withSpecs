Given(/^there is a post titled with "(.*?)" and content with "(.*?)"$/) do |title, content|
  @post = Post.create!({ :title => title, :content => content, :post_time => Time.now })
end
And(/^there is a comment on this post$/) do
  @post.comments.create!({:username => "swassist", :email => "admin@myblog.com", :content => "Test deleting comment" })
end
When(/^I am on the post page$/) do
  visit(post_path @post)
end
And /^I click "Delete Comment"$/ do
  click_on "Delete Comment"
end
Then /^the comment should be deleted$/ do
  visit(post_path @post)
end

