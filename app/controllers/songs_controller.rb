class SongsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]
  before_filter :check_if_logged_in, :only => [:show]

  def index
    @songs = Song.order(:name)
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def show
    @song = Song.find(params[:id])
    @album = @song.album
    @artist = @song.artist
  end

  def update
    song = Song.find(params[:id])
    song.update_attributes(params[:song])
    redirect_to(songs_path)
  end

  def create
    @song = Song.new(params[:song])
    if @song.save
      redirect_to(songs_path)
    else
      render :new
    end
  end

  def purchase
    @song = Song.find(params[:id])
  end

  def buy
    song = Song.find(params[:id])
    if song.cost <= @auth.balance
        @auth.balance -= song.cost
        @auth.save
        song.update_attributes(params[:song])

    else
      redirect_to(songs_path)
    end
  end

end