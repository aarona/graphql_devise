FactoryBot.define do
  factory :admin do
    email    { Faker::Internet.unique.email }
    password { Faker::Internet.password }

    trait :confirmed do
      confirmed_at { Time.now }
    end
  end
end
