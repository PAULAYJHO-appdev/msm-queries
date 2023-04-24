Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "youngest_director" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest_director" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })
end
