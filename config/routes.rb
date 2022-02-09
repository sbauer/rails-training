Rails.application.routes.draw do
  get "/movies", to: "movies#index", as: "movies"
  get "/movies/:id", to: "movies#show", as: "movie"
end
