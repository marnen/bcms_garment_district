When /^I go to the content library$/ do
  visit content_library_path
end

Then /^I should see "(.*?)" as an available content type$/ do |content_type|
  page.should have_css '#content_types', :text => content_type
end