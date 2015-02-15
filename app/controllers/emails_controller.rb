class EmailsController < ApplicationController
	def new
  		@contact = Contact.find(params[:contact_id])
  		@email = @contact.emails.new
  end

	def create
		@contact = Contact.find(params[:contact_id])
		@email = @contact.emails.new(email_params)
		if @email.save
			redirect_to "/emails/new/#{params[:contact_id]}"
		else
			render "new"
		end
  end

	private
	def email_params
		params.require(:email).permit(:email, :contact_id)
	end





end
