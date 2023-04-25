class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
   
    render({ :template => "movie_templates/index.html.erb"})
  end

  def movie_details
    #params looks like {:a_movie=>"1"}
    the_movie = params.fetch("a_movie")
    @the_movie = Movie.where({ :id => the_movie }).at(0)
    @director = Director.where({ :movie_id => @the_movie.id })
    render({ :template => "movie_templates/show.html.erb"})
  end
end
