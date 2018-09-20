require 'rails_helper'

describe Book, type: :model do
  subject(:book) do
    FactoryBot.build(:book, publisher: nil, year: nil)
  end

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
