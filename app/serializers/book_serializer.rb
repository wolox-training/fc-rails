class BookSerializer < ActiveModel::Serializer
  attributes :id, :genre, :author, :image, :title, :publisher, :year, :created_at, :updated_at
end
