FactoryGirl.define do
  factory :group_type, :class => Cms::GroupType do
    name { Faker::Lorem.sentence }
  end
end