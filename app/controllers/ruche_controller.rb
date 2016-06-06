class RucheController < ApplicationController

	def index
	end

	def info
	end

	def form
	end
	
	def create
		@contact = Contact.new(params_contact)
		if @contact.save
			UserMailer.envoi_form_email.deliver
			redirect_to root_path, notice: "Merci de votre participation !"
		else
			render 'form'
		end
	end

	def donnees
		@contact = Contact.all
	end

	private

	def params_contact
		params.require(:contact).permit(:nom, :prenom, :mail, :avis)
	end
end
