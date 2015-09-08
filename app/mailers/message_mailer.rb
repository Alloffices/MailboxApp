class MessageMailer < ActionMailer::Base
  def new_message(message, recipient)
    @message = message
  end
end