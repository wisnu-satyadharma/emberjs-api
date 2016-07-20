class Api::V1::ContactsController < ApplicationController

  def create
    @contact = Contact.create(contact_params)
    render json: @contact
  end

  def index  	
  	@contacts = Contact.all
    render json: @contacts
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: @contact
  end
  
	
	private
	
	def contact_params
		res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)  	
  	res
	end
end