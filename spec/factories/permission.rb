FactoryGirl.define do
  factory :permission, :class => Cms::Permission do
    trait :admin do
      name 'administrate'
    end
  end
end