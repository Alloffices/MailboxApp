class MessageMailer < ActionMailer::Base

  def send_message(recipients)

  	@current_user = current_user
  	@recipients = recipients

  	mail(to: "#{recipients.email}",
  		subject: "New project: #{current_user.email}"
	)
  end
end