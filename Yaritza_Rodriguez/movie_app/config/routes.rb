MovieApp::Application.routes.draw do

  root "movies#index" #root means to be viewed from your localhost
  resources :movies
  get "search", to: "search#index"

end

