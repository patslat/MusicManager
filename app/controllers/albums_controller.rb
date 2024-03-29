class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    @bands = Band.all
    @admin = admin?
    render :index
  end

  def show
    @album = Album.find(params[:id])
    @admin = admin?
    render :show
  end

  def new
    @album = Album.new
    @bands = Band.all
    render :new
  end

  def create
    album = Album.new(params[:album])
    if album.save
      flash[:notice] = "Album added!"
      redirect_to albums_url
    else
      flash[:notice] = "Failed to add album."
      redirect_to albums_url
    end
  end

  def edit
    @album = Album.find(params[:id])
    @bands = Band.all
    render :edit
  end

  def update
    Album.find(params[:id]).update_attributes(params[:album]) if admin?
    redirect_to album_url
  end

  def destroy
    Album.find(params[:id]).destroy if admin?
    redirect_to albums_url
  end
end
