When /^I go to the root in edit mode$/ do
  visit '/?mode=edit'
end

When /^I press "(.*?)"$/ do |text|
  click_button text
end

When /^I fill in the following:$/ do |table|
  table.rows_hash.each do |field, value|
    fill_in field, :with => value
  end
end

Then /^I should see the HTML "(.*?)"$/ do |html|
  wait_until do
    page.html.should include html
  end
end

Then /^I should not see "(.*?)"$/ do |text|
  page.should have_no_content text
end

Then /^(.*?) within the content/ do |step_text|
  within '#block_content .content' do
    step step_text
  end
end