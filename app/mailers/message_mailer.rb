class MessageMailer < ActionMailer::Base

	def send_message(recipients)
		@current_user = current_user

		mail(to: recipients,
			from: current_user.email,
			)
	end

end