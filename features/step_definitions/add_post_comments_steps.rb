Given(/^there is a post titled with "(.*?)" and content with "(.*?)" and I am on the post page$/) do |title, content|
  @post = Post.create!({ :title => title, :content => content, :post_time => Time.now })
  visit(post_path @post)
end
When /^I add a comment with the following information$/ do |table|
# table is a Cucumber::Ast::Table
  table.hashes.each do |comment_data|
    @commenter = comment_data[:name]
    @email = comment_data[:email]
    @content = comment_data[:content]
    @post.comments.create!({ :username => @commenter, :email=> @email, :content => @content })
  end
end
Then /^I can see the comment has been added onto the post$/ do
  comments_list = find("div#comments-list")
  comments_list.should have_content(@commenter)
  comments_list.should have_content(@email)
  comments_list.should have_content(@content)
end
