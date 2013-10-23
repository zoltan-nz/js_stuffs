class PostsController < ApplicationController
  include ActionController::MimeResponds
  include ActionController::Helpers
  include ActionController::Cookies

  def create
    @post = Post.new(params[:post])
    @post.save!
  end

  def index
    @posts = Post.all
    @authors = Author.all
    render
  end

  def show
    @post = Post.find(params[:id])
    render
  end

end