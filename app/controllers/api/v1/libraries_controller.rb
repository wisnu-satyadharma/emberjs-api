class Api::V1::LibrariesController < ApplicationController

  def create
    @library = Library.create(library_params)
    render json: @library
  end

  def index  	
  	@libraries = Library.all
    render json: @libraries
  end
	
	private
	
	def library_params
		res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)  	
  	res
	end
end