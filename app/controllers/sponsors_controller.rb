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
    if @sponsor.save
      flash[:notice] = "Sponsor created"
      redirect_to sponsor_path(@sponsor)
    else
      flash[:notice] = "Sponsor not created: " + @sponsor.errors.full_messages.join(", ")

    end
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update_attributes(params[:sponsor])
      flash[:notice] = "Sponsor updated"
      redirect_to sponsors_path
    else
      flash[:notice] = "Sponsor not updated: " + @sponsor.errors.full_messages.join(", ")
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
