FactoryBot.define do
    factory :book do
      genre (Faker::Book.genre)
      author (Faker::Book.author)
      image (Faker::File.file_name())
      title (Faker::Book.title)
      publisher (Faker::Book.publisher)
      year (Faker::Number.number(4))
    end
end
