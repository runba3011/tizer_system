class MoviesController < ApplicationController
  before_action :movie_setter
  def index
    
  end
  
  def show
    
  end

  def new
    
  end

  def create
    @movie = Movie.new(movie_params)
    binding.pry
  end

  def edit
    
  end

  def update
    
  end

  def destroy 

  end

  private
  def movie_setter
    @movie = Movie.new
  end

  def movie_params
    params.require(:movie).permit(:single_point , :title , :link).merge(user_id: current_user.id)
  end
end
