class PostsController < ApplicationController
  before_filter :authenticate
  
  def create
    @post = current_user.posts.build(params[:post])
    if @post.save
      redirect_to root_path, :flash => { :success => "post created!" }
    else
      render 'pages/home'
    end
    
    def destroy
    
    end 
  end
end