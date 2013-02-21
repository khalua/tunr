class AlbumsController < ApplicationController
  before_filter :check_if_admin, :only => [:show, :update, :new]

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

  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin # if you're not logged or you're not an admin
  end

  def update
    album = Album.find(params[:id])
    album.update_attributes(params[:album])
    redirect_to(albums_path)
  end

  def create
    album = Album.create(params[:album])
    redirect_to(albums_path)
  end

end