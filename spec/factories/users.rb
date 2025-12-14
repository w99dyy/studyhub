FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "factorybot000#{n}" }
    sequence(:email) { |n| "user#{n}@studyhub011.com" }
    password { "asdasd" }
  end
end
