class GenresController < ApplicationController
  before_filter :check_if_admin, :only => [:show, :update, :new]

  def index
    @genres = Genre.order(:name)
  end

  def new
    @genre = Genre.new
    render :show
  end

  def edit
    @genre = Genre.find(params[:id])
    render :new
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin # if you're not logged or you're not an admin
  end

  def update
    genre = Genre.find(params[:id])
    genre.update_attributes(params[:genre])
    redirect_to(genres_path)
  end

  def create
    genre = Genre.create(params[:genre])
    redirect_to(genres_path)
  end

end