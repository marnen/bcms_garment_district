FactoryGirl.define do
  factory :user, :class => Cms::User do
    login { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password_confirmation { password }

    factory :admin_user do
      after(:create) do |user|
        unless user.cms_access?
          user.groups << FactoryGirl.create(:group, :cms_access, :admin)
        end
      end
    end
  end
end