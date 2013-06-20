class PostsController < ApplicationController
  before_filter :authenticate
  before_filter :authenticate_user, :only => :destroy
  
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      redirect_to root_path, :flash => { :success => "post created!" }
    else
      @feed_items = []
      render 'pages/home'
    end
  end
  
    def destroy
     @post.destroy
     redirect_to root_path, :flash => { :success => "Post deleted!"}
    end 

    private
    
    def authenticate_user
      @post = Post.find(params[:id])
      redirect_to root_path unless current_user?(@post.user)
    end
end