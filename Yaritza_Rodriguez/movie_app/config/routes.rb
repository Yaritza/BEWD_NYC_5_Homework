MovieApp::Application.routes.draw do
  #get "search/index"
  root "movies#index" #root means to be viewed from your localhost
  get "/search", to: "search#index"

 # resources: :movies only [ :title, :description, :year_released, :rating]

end

