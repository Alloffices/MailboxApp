class MessageMailer < ActionMailer::Base
  def new_message
    mail(
      to: recipient,
      subject: message,
    )
  end
end