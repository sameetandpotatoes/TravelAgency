class PagesController < ApplicationController

	def contact
    @message = Message.new
    flash.now.alert = nil
	end

	def create
    @message = Message.new(params[:message])
    if @message.valid?
      ContactMailer.new_message(@message).deliver
      redirect_to home_path, flash: {success: "Message was successfully sent."}
    else
      redirect_to home_path, flash: {error: "Please fill in all parameters."}
    end
  end

end
