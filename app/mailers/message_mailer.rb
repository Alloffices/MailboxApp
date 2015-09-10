class MessageMailer < ActionMailer::Base
  def new_message(current_user, conversation_user)

	@current_user = current_user
	@recipients = recipients

    mail(to: recipients.email,
    	subject: "Request From Another Creative",
		body: "Hi, This is another request for session. #{current_user.name}, #{current_user.email}, #{current_user.skill}, #{current_user.location} "
	)
  end
end