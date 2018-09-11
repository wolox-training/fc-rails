FactoryBot.define do
  factory :user do
    email (Faker::Internet.email)
    password (Faker::Internet.password(8))
    first_name (Faker::FunnyName.name)
    last_name (Faker::Name.last_name)
  end
end
