class MessagesController < ApplicationController
  before_action :authenticate_user!

  def new
    @chosen_recipient = User.find_by(id: params[:to].to_i) if params[:to]
  end

  def create
    recipients = User.where(id: params['recipients'])
    conversation = current_user.send_message(recipients, params[:message][:body], params[:message][:subject]).deliver_now
    flash[:success] = "Message has been sent!"
    redirect_to conversation_path(conversation)
  end

  # def create
  #   @recipient = User.find(params[:recipient_id])
  #   @message = current_user.messages.build(message_params)
  #   if @message.save
  #     MessageMailer.new_message(@message, recipient).deliver
  #   else
  #     # some error processing
  #   end
  # end

end