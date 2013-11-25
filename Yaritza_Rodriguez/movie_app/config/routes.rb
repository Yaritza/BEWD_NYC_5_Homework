MovieApp::Application.routes.draw do
  root "movies#index" #root means to b viewed from your localhost
 get "movies/index"
#movies GET /movies(.:format) movies#index
end

