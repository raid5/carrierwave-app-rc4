class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    3.times { @post.photos << PostPhoto.new }
  end
  
  def create
    @post = Post.new(params[:post])
    @post.save
    
    if params[:post][:photos].blank?
      # No photo, manually add one
      post_photo = @post.photos.build
      post_photo.photo.store!(File.open("#{Rails.root}/app/assets/images/rails.png"))
      post_photo.save!
    end
    
    redirect_to posts_path
  end
end
