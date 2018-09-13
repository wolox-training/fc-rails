class NotificationGeneratorMailer < ApplicationMailer
  def new_rent_notification
    @rent = params[:rent]
    mail to: @rent.user.email, subject: 'Acabas de alquilar un libro!!.'
  end
end
