class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index 
    sort_by = params[:sort_by] || session[:sort_by]
    session[:sort_by] = sort_by
    @table_header = 'hilite' if sort_by == 'title'
    @release_date_header = 'hilite' if sort_by == 'release_date'
    @all_ratings = Movie.ratings
    if params.keys.include? "ratings"
      @ratings = params[:ratings].keys if params[:ratings].is_a? Hash
      @ratings = params[:ratings] if params[:ratings].is_a? Array
    elsif session.keys.include? "ratings"
      @ratings = session[:ratings]
    else
      @ratings=@all_ratings
    end
    session[:ratings] = @ratings
    redirect_to movies_path(:sort => session[:sort], :ratings => session[:ratings]) if !((params.keys.include? 'sort') || (params.keys.include? 'ratings'))
    @movies = Movie.where(:rating => @ratings).order(sort_by)
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end