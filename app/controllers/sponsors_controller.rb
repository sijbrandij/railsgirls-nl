class SponsorsController < ApplicationController
  before_filter :load_sponsor, only: [:show, :edit, :update, :destroy]

  def index
    @sponsors = Sponsor.all
  end

  def show
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
  end

  def create
    @sponsor = Sponsor.create(sponsor_params)
    if @sponsor.save
      flash[:notice] = "Sponsor created"
      redirect_to sponsor_path(@sponsor)
    else
      flash[:notice] = "Sponsor not created: " + @sponsor.errors.full_messages.join(", ")
      render 'new'
    end
  end

  def update
    if @sponsor.update_attributes(sponsor_params)
      flash[:notice] = "Sponsor updated"
      redirect_to sponsors_path
    else
      flash[:notice] = "Sponsor not updated: " + @sponsor.errors.full_messages.join(", ")
      render 'edit'
    end
  end

  def destroy
    if @sponsor.destroy
      flash[:notice] = "Sponsor destroyed"
      redirect_to sponsors_path
    end
  end

  private

  def sponsor_params
    params.require(:sponsor).permit(:name, :description, :logo, :url)
  end

  def load_sponsor
    @sponsor = Sponsor.find(params[:id])
  end
end
