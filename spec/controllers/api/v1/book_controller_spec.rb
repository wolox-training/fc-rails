require 'rails_helper'
require 'factories'
require 'devise_auth_token'

describe Api::V1::BookController, type: :controller do
  @current_user = FactoryBot.build(:user)

puts @current_user

  client_id = SecureRandom.urlsafe_base64(nil, false)
  token     = SecureRandom.urlsafe_base64(nil, false)

  @current_user.tokens[client_id] = {
    token: BCrypt::Password.create(token),
    expiry: (Time.now + 1.day).to_i
  }

  let(:user) { @current_user }
  let!(:access_data) { AuthenticableEntity.generate_access_token(user) }
  let!(:access_token) { access_data[:token] }
  let!(:renew_id) { access_data[:renew_id] }

  before do
    request.headers['Authorization'] = access_token
  end

  describe 'GET #show' do
    context 'When fetching a user rent' do
      let!(:rent) { create(:rent, user: user) }

      before do
        get :show, params: { user_id: user.id, id: rent.id }
      end

      it 'responses with the user rent json' do
        expect(response_body.to_json).to eq RentSerializer.new(
          rent, root: false
        ).to_json
      end

      it 'responds with 200 status' do
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
