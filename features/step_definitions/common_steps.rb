Given(/^I am on the blog homepage$/) do
  visit("/posts")
end

And(/^there are already (\d+) posts$/) do |arg1|
  arg1.to_i.times do |n|
    Post.create!({ :title => "Title #{n}", :content =>
        "Content #{n}", :post_time => Time.now })
  end
end