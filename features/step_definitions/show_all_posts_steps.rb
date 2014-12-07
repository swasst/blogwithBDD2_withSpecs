Then(/^I can see list of (\d+) posts$/) do |arg1|
  #page.should have_selector("table#posts-list>tr:eq()")
  #visit("/posts")
  step %{I am on the blog homepage}
  find("table#posts-list>tr:eq(#{arg1}) >td:eq(1)").should have_content("Title 3")
  find("table#posts-list>tr:eq(#{arg1}) >td:eq(2)").should have_content("Content 3")
end
