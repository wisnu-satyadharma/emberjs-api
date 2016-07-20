class Api::V1::LibrariesController < ApplicationController

  def create
    @library = Library.create(library_params)
    render json: @library
  end

  def index  	
  	@libraries = Library.all
    render json: @libraries
  end

  def show
    @library = Library.find(params[:id])
    render json: @library
  end

  def update
    @library = Library.find(params[:id])
    @library.update_attributes(library_params)
    render json: @library
  end

  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    render json: @library
  end
	
	private
	
	def library_params
		res = ActiveModelSerializers::Deserialization.jsonapi_parse(params)  	
  	res
	end
end