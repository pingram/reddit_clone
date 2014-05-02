# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :link_sub do
    association :link, factory: :link
    association :sub, factory: :sub
  end
end
