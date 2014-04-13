class SponsorsController < ApplicationController

  def index
    @sponsors = Sponsor.all
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def new
    @sponsor = Sponsor.new
  end

  def edit
    @sponsor = Sponsor.find(params[:id])
  end

  def create
    @sponsor = Sponsor.create(params[:sponsor])
    redirect_to sponsor_path(@sponsor)
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update_attributes(params[:sponsor])
      flash[:notice] = "Sponsor updated"
      redirect_to sponsors_path
    else
      render 'edit'
    end
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.destroy
      flash[:notice] = "Sponsor destroyed"
      redirect_to sponsors_path
    end
  end
end
