FactoryBot.define do
    factory :book_suggestion do
      author { Faker::Book.author }
      title { Faker::Book.title }
      link { Faker::Internet.url }
      editorial { Faker::Company.name }
      publisher { Faker::Book.publisher }
      year { Faker::Number.number(4) }
      price { Faker::Number.number(3) }
      user
    end
end
