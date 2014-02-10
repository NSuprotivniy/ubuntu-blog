FactoryGirl.define do
  factory :user do
    name     "Name Example"
    email    "name@example.com"
    password "password"
    password_confirmation "password"
  end
end