class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render
  end

  def show
    @author = Author.find(params[:id])
    render
  end

end