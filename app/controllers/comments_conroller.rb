class CommentsController < ApplicationController
  def create
    @resource = Resource.find(params[:resource_id])
    @comment = @resource.comments.create(params[:comment])
    redirect_to resource_path(@resource)
  end
end