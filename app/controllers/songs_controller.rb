class SongsController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

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
    if @song.cost <= @auth.balance
        @auth.balance -= @song.cost
    else
      redirect_to(songs_path)
    end
  end

end