class RentPolicy < ApplicationController
  attr_reader :user, :rent

  def initialize(user, rent)
    @user = user
    @post = rent
  end

  def create?
    true
  end
end
