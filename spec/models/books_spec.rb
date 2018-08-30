require 'rails_helper'

describe Book, type: :model do
  subject(:book) do
    Book.new(
      genre: genre, author: author, image: image, title: title, publisher: publisher, year: year
    )
  end

  let(:genre)     { 'Terror' }
  let(:author)    { 'Stephen King' }
  let(:image)     { 'it.jpg' }
  let(:title)     { 'It' }
  let(:publisher) { nil }
  let(:year)      { nil }

  describe '#create' do
    context 'When publisher is nil' do
      it do
        is_expected.to be_invalid
      end
    end

    context 'When year is nil' do
      it do
        is_expected.to be_invalid
      end
    end
  end
end
