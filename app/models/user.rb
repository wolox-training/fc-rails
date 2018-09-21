class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include DeviseTokenAuth::Concerns::User

  devise :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.find_by email: data['email']

    user ||= User.create(
      name: data['name'],
      email: data['email'],
      password: Devise.friendly_token[0, 20]
    )

    user
  end
end
