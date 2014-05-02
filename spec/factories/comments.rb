# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    body { Faker::Lorem.paragraph }
    parent_comment_id { create(:top_comment).id }
    association :link, factory: :link
    factory :top_comment do
      parent_comment_id nil
    end
  end
end
