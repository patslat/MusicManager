class TracksController < ApplicationController
  def index
    @tracks = Track.all
    @admin = admin?
    render :index
  end

  def show
    @track = Track.find(params[:id])
    @admin = admin?
    @current_user = current_user
    render :show
  end

  def new
    @track = Track.new
    @albums = Album.all
    render :new
  end

  def create
    track = Track.new(params[:track])
    if track.save
      flash[:notice] = "Track added!"
      redirect_to tracks_url
    else
      flash[:notice] = "Failed to add track."
      redirect_to tracks_url
    end
  end

  def edit
    render :edit
  end

  def update
    Track.find(params[:id]).update_attributes(params[:track]) if admin?
    redirect_to track_url
  end

  def destroy
    Track.find(params[:id]).destroy if admin?
    redirect_to tracks_url
  end
end
