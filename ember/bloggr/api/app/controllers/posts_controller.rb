class PostsController < ApplicationController



  def index
    render json: Post.all
  end

  def show
    render json: Post.find(params[:id])
  end

  private

  def default_serializer_options
  {
      root: 'post'
  }
  end
end