class ModelGeneratorMailer < ApplicationMailer
  def new_rent_notification(rent_id)
    @rent = Rent.find(rent_id)
    mail to: @rent.user.email, subject: 'Acabas de alquilar un libro!!.'
  end
end
