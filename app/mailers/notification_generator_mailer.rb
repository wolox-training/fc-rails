class NotificationGeneratorMailer < ApplicationMailer
  def new_rent_notification
    @rent = params[:rent]
    I18n.locale = @rent.user.locale
    mail to: @rent.user.email, subject: t('mail_notification.subject')
  end
end
