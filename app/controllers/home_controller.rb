class HomeController < ApplicationController
  def index
  end

  def list
    @every_post = Post.all.order("id desc")
  end

  def write
    @title = params[:title]
    @content = params[:content]
    
    post = Post.new(title: params[:title], content: params[:content], writer: params[:writer])
    post.save
    
    redirect_to "/read/#{post.id}"
    
  end
  
  def read
    @post = Post.find(params[:post_id])
  end
  
  def write_view
  end
  
  def update_view
      @one_post = Post.find(params[:post_id])
  end
  
  def update
      @one_post = Post.find(params[:post_id])
      @one_post.title = params[:title]
      @one_post.content = params[:content]
      @one_post.save 
      redirect_to "/list"
  end
    
  def destroy 
      @one_post = Post.find(params[:post_id])
      @one_post.destroy
      redirect_to "/list"
  end

end
