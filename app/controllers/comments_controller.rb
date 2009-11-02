class CommentsController < ApplicationController
   def destroy
     @comment = Comment.find_by_id(params[:id])
     if @comment.user_id = session[:user]
       @comment.destroy
   end
    
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = session[:user]
    @comment.post_id = params[:id]
    @comment.parent_id = params[:parent_id]
    if @comment.save
      #redirect_to :controller => "ads", :action => "show", :id=> @comment.ad_id
    else
      #redirect_to :action => "new"
    end
  end

  def update
    @comment = Comment.find_by_id(params[:id])
    if @comment.update_attributes(params[:comment])
      #redirect_to :controller => "ads", :action => "show", :id=> @comment.ad_id
    end
  end
  
end
