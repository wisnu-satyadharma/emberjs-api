class Api::V1::InvitationsController < ApplicationController

  def create
    @invitation = Invitation.create(invitation_params)
    render json: @invitation
  end

  def index  	
  	
  end
	
	private
	
	def invitation_params
		res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)  	
  	res
	end
end