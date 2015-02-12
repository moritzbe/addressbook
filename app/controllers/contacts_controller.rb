class ContactsController < ApplicationController
	def index
      @contacts = Contact.create(prename: "Moritz", surnamen: "Berthold")
      @contacts.save
    end

   #  def show
  	# 	@project = Project.find(params[:id])
  	# end

	def new
		@contact = Contact.new
	end



    def create
	      @contact = Contact.new(contact_params)
	      if @contact.save
	        redirect_to "/new"
	      else
	        render "new"
	      end
    end

    private
    def contact_params
      params.require(:contact).permit(:prename, :surnamen)
    end






end
