# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    user
    title Faker::Name.name
    description Faker::Lorem.sentence
    summa 1000
  end
end
