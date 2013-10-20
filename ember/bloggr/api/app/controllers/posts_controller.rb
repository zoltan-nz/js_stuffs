class PostsController < ApplicationController



  def index
    render json: Post.all
  end

  private

  def default_serializer_options
  {
      root: false
  }
  end
end