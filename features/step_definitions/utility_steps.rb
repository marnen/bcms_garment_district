When /^I go to the root in edit mode$/ do
  visit '/?mode=edit'
end

Then /^I should see the HTML "(.*?)" within the content$/ do |html|
  within '#block_content .content' do
    page.html.should include html
  end
end

Then /^I should not see "(.*?)" within the content$/ do |text|
  within '#block_content .content' do
    page.should_not have_content text
  end
end

Then /^I should not see "(.*?)"$/ do |text|
  page.should_not have_content text
end