FactoryGirl.define do
  factory :markdown_block, :class => BcmsGarmentDistrict::MarkdownBlock do
    name { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
  end
end