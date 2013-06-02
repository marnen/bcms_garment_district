FactoryGirl.define do
  factory :group, :class => Cms::Group do
    name { Faker::Lorem.sentence }

    trait :admin do
      after(:create) do |group|
        permission = Cms::Permission.where(:name => 'administrate').first || FactoryGirl.create(:permission, :admin)
        group.permissions << permission
      end
    end

    trait :cms_access do
      association :group_type, :cms_access => true
    end
  end
end