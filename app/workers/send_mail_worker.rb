class SendMailWorker
  include Sidekiq::Worker

  def perform(rent_id)
    ModelGeneratorMailer.new_rent_notification(rent_id).deliver
  end
end
