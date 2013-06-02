Given 'the content types are registered' do
  # TODO: try to unify this with the content block generator in BrowserCms itself.
  [Cms::HtmlBlock, BcmsGarmentDistrict::MarkdownBlock].each do |klass|
    class_name = klass.name
    group_name = class_name.split('::').first
    Cms::ContentType.create!(:name => "#{class_name}", :group_name => "#{group_name}")
  end
end