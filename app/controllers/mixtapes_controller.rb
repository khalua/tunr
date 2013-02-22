class MixtapesController < ApplicationController
  def index #only shows auths mixtape
    @mixtapes = @auth.mixtapes
  end
  def new
    @mixtape = Mixtape.new
  end
  def create
    @mixtape = Mixtape.create(params[:mixtape])
    redirect_to(mixtapes_path)
  end
end