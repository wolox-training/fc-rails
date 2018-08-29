class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :id_user, presence: true
  validates :id_book, presence: true
  validates :from, presence: true
  validates :to, presence: true
end
