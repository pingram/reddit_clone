# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_vote do
    association :user, factory: :user
    association :link, factory: :link
    upvote true
    factory :downvote do
      upvote false
    end
  end
end
