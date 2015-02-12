class EmailsController < ApplicationController
	def new
  		@contact = Contact.find(params[:contact_id])
  		@email = @contact.email.new
  	end

  	def create
  		@contacts = Project.find(params[:contact_id])
  		@email = @contacts.email.new(email_params)
  		if @email.save
  			redirect_to "/new"
  		else
  			render "new"
  		end
  	end

  	private
  	def email_params
  		params.require(:email).permit(:email)
  	end








end
