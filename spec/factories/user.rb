
FactoryGirl.define do
  factory :user do
    email "alex@devmen.com"
    password "password"
    password_confirmation "password"
  end

  factory :invalid_user do
    email "alex@devmen.com"
    password "123123"
    password_confirmation "321431"
  end
end
