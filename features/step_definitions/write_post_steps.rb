When(/^I click "(.*?)" link$/) do |link|
 click_on link
end
And(/^I fill "(.*?)" as Title$/) do |title|
  @title = title
  fill_in "Title", :with => title
end
And(/^I fill "(.*?)" as content$/) do |content|
  fill_in "Content", :with => content
end
And(/^I click "(.*?)" button$/) do |btn|
  click_on btn
end
Then(/^I should see the blog I just posted$/) do
  page.should have_content(@title)
end