class ModelGeneratorMailer < ApplicationMailer
  def new_rent_notification(rent)
    @rent = rent
    mail to: @rent.user.email, subject: "Acabas de alquilar un libro!!."
  end
end
