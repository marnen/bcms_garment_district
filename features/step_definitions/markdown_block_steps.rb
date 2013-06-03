Given /^a Markdown block exists with name "(.*?)" and content "(.*?)"$/ do |name, content|
  @block = FactoryGirl.create :markdown_block, :name => name, :content => content
end

When "I view the block's content" do
  visit markdown_block_path @block # TODO: make url_for work here.
end

When /^I go to the new Markdown block form$/ do
  visit new_markdown_block_path
end

Then /^a Markdown block with name "(.*?)" should not exist$/ do |name|
  BcmsGarmentDistrict::MarkdownBlock.where(:name => name).should be_empty
end