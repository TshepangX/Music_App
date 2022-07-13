Rails.application.routes.draw do
  root "artists#index"

  resources :artists
  resources :albums
  resources :songs do 
    resources :ratings
  end
  resources :genres do
    resources :songs
  end 

  get "/years", to: "years#index"


end
