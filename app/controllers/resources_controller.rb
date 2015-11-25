class ResourcesController < ApplicationController
  before_filter :load_resource, only: [:show, :edit, :update, :upvote,
    :destroy, :downvote]

  def index
    @resources = Resource.order('upvotes - downvotes desc').all

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      flash[:notice] = 'Resource created'
      redirect_to resources_path
    else
      errors = @resource.errors
      flash[:alert] = "Resource not created #{errors.full_messages.to_yaml}"
      redirect_to action: 'new'
    end
  end

  def edit
  end

  def update
    if @resource.update_attributes(resource_params)
      flash[:notice] = 'Resource updated!'
      redirect_to resources_path
    else
      errors = @resource.errors
      flash[:alert] = "Resource not updated #{errors.full_messages.to_yaml}"
      redirect_to action: 'edit'
    end
  end

  def destroy
    @resource.destroy
    flash[:notice] = 'Resource deleted' if @resource.destroy
    redirect_to resources_path
  end

  def upvote
    @resource.upvote
    @resource.save
    redirect_to resources_path(format: :js)
  end

  def downvote
    @resource.downvote
    @resource.save
    redirect_to resources_path(format: :js)
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :description, :url)
  end

  def load_resource
    @resource = Resource.find(params[:id])
  end
end
