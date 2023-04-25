Rails.application.routes.draw do
  #homepage
  get("/", { :controller => "application", :action => "homepage" })

  #directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest_director" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest_director" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  #movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:a_movie", { :controller => "movies", :action => "movie_details" })

  #actors
  get("/actors", { :controller => "actors", :action => "index" })
end
