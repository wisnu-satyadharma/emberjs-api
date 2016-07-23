class Api::V1::AuthorsController < ApplicationController


  def show
    @author = Author.find(params[:id])
    render json: @author
  end

  def index  	
  	@authors = Author.all
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