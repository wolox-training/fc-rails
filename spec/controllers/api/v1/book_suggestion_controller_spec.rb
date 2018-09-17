require 'rails_helper'

describe Api::V1::BookSuggestionsController, type: :controller do
  include_context 'Authenticated User'

  describe 'POST #create' do
    context 'When creating a valid book suggestion' do
      let!(:new_book_suggestion_attributes) { FactoryBot.attributes_for(:book_suggestion, user: user).merge(user_id: user.id) }
      it 'creates a new book suggestion' do
        expect do
          post :create, params: new_book_suggestion_attributes
        end.to change { BookSuggestion.count }.by(1)
      end

      # it 'responds with 201 status' do
      #   post :create, params: { id: user.id, rent: new_book_suggestion_attributes }
      #   expect(response).to have_http_status(:created)
      # end
    end

    # context 'When creating an invalid user rent' do
    #   let!(:new_book_suggestion_attributes) { attributes_with_foreign_keys(:rent, book: nil) }
    #   before do
    #     post :create, params: { id: user.id, rent: new_book_suggestion_attributes }
    #   end
    #
    #   it 'doesn\'t create a new rent' do
    #     expect do
    #       post :create, params: { id: user.id, rent: new_book_suggestion_attributes }
    #     end.to change { Rent.count }.by(0)
    #   end
    #
    #   it 'returns error messages' do
    #     expect(response_body['error']).to be_present
    #   end
    #
    #   it 'responds with 422 status' do
    #     expect(response).to have_http_status(:unprocessable_entity)
    #   end
    # end
  end
end
