class MessageMailer < ActionMailer::Base

	default from: "#{current_user.email}"

	def send_message(recipients)
		mail(to: recipients
			)
	end

end