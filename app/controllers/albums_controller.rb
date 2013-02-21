class AlbumsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def index
    @albums = Album.order(:name)
  end

  def new
    @album = Album.new
    render :show
  end

  def edit
    @album = Album.find(params[:id])
    render :new
  end

  def show
    @album = Album.find(params[:id])
  end

  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to(albums_path)
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end

end