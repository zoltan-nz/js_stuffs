class AuthorsController < ApplicationController

  def index
    render json: Author.all
  end

  def show
    render json: Author.find(params[:id])
  end

  private

  def default_serializer_options
    {
        root: false
    }
  end
end