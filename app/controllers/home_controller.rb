class HomeController < ApplicationController
  def index
  end

  def list
    @every_post = Post.all.order("id desc")
  end
  
  def list2
    @every_post2 = Post2.all.order("id desc")
  end
  
  def write
    @title = params[:title]
    @content = params[:content]
    
    post = Post.new(title: params[:title], content: params[:content], writer: params[:writer])
    post.save
    
    redirect_to "/read/#{post.id}"
  end
  
  def write2
    @title2 = params[:title2]
    @content2 = params[:content2]
      
    post = Post2.new(title2: params[:title2], content2: params[:content2], writer2: params[:writer2])
    post.save
    
    redirect_to "/read2/#{post.id}"
  end
  
  def read
    @post = Post.find(params[:post_id])
  end
  
  def read2
    @post2 = Post2.find(params[:post_id])
  end  

  def write_view
  end

  def write_view2
  end
  
  def update_view
      @one_post = Post.find(params[:post_id])
  end
  
  def update_view2
      @one_post2 = Post2.find(params[:post_id])
  end  
  
  def update
      @one_post = Post.find(params[:post_id])
      @one_post.title = params[:title]
      @one_post.content = params[:content]
      @one_post.save 
      redirect_to "/list"
  end

  def update2
      @one_post2 = Post2.find(params[:post_id])
      @one_post2.title2 = params[:title2]
      @one_post2.content2 = params[:content2]
      @one_post2.save 
      redirect_to "/list2"
  end
    
  def destroy 
      @one_post = Post.find(params[:post_id])
      @one_post.destroy
      redirect_to "/list"
  end

  def destroy2
      @one_post2 = Post2.find(params[:post_id])
      @one_post2.destroy
      redirect_to "/list2"
  end 

end