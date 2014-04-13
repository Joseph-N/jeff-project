class EmailsController < ApplicationController
	def new
		@email = Email.new
	end

	def create
		@email = Email.create(email_params)
		if @email.save
			ContactMailer.send_email(@email.id).deliver!
			redirect_to root_path, notice: "Thanks for contacting us"
		else
			render 'new'
		end
	end

	private
	def email_params
		params.require(:email).permit(:subject, :name, :email, :message)		
	end
end
