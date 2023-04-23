FactoryBot.define do
  factory :user do
    name { "test user" }
    email { "test@example.com" }
    password { "password" }
  end
end
