class Api::V1::AuthorsController < ApplicationController


  def index  	
  	@authors = Author.joins(:books).all
    render json: @authors    
  end

  def update
  	@author = Author.find(params[:id])
  	@author.update_attributes(author_params)
  	render json: @author
  	
  end

	private
	
	def author_params
		res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)  	
  	res
	end

  	
end