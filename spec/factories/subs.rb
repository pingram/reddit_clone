# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sub do
    name { Faker::Company.catch_phrase }
    association :moderator, factory: :user
  end
end
