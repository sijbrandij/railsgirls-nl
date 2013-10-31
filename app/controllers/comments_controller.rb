class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params[:comment])
    if !@comment.spam?
      if @comment.save
        redirect_to resource_path(@comment.resource), notice: "Comment saved!"
      else
        render 'new'
      end
    end
  end

  def new
  	@comment = Comment.new
  end

  def mark_as_spam
    @comment = Comment.find(params[:id])
    if @comment
      flash[:notice] = "Thanks for your feedback!" if @comment.spam!
    end
    redirect_to resource_path(@comment.resource)
  end

  def unmark_as_spam
    @comment = Comment.find(params[:id])
    if @comment
      flash[:notice] = "Thanks for your feedback!" if @comment.ham!
    end
    redirect_to resource_path(@comment.resource)
  end
end