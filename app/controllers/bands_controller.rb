class BandsController < ApplicationController
  def index
    @bands = Band.all
    render :index
  end

  def show
    @band = Band.find(params[:id])
    render :show
  end

  def new
    @band = Band.new
    render :new
  end

  def create
    band = Band.new(params[:band])
    if band.save
      flash[:notice] = "Band added!"
      redirect_to bands_url
    else
      flash[:notice] = "Failed to add band."
      redirect_to bands_url
    end
  end

  def edit
    @band = Band.find(params[:id])
    render :edit
  end

  def update
    Band.find(params[:id]).update_attributes(params[:band])
    redirect_to band_url
  end

  def destroy
    Band.find(params[:id]).destroy
    redirect_to bands_url
  end
end
