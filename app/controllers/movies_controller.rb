class MoviesController < ApplicationController
  before_action :movie_setter
  def index
    
  end
  
  def show
    
  end

  def new
    @movie.is_confirm = false
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.valid?
      binding.pry
      if params[:movie][:is_confirm] == "0"
        # まだ確認処理が終わっていない時
        @movie.is_confirm = true
        render :new
      else
        # 確認処理の後の時
        @movie.save();
      end
    else
      # そもそも@movieが保存できないような値だった時
      @movie.is_confirm = false;
      render :new
    end
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
