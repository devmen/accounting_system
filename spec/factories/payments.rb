# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    user
    account_id 1
    amount 1.5
    description "MyText"
  end
end
