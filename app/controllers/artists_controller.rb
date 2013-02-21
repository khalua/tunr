class ArtistsController < ApplicationController
  before_filter :check_if_admin, :only => [:show, :update, :new]

  def index
    @artists = Artist.order(:name)
  end

  def new
    @artist = Artist.new
    render :show
  end

  def edit
    @artist = Artist.find(params[:id])
    render :new
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin # if you're not logged or you're not an admin
  end

  def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to(artists_path)
  end

  def create
    artist = Artist.create(params[:artist])
    redirect_to(artists_path)
  end

end