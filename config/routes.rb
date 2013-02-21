R20130218Tunr::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :except => [:edit] do #add other routes to except by separating by commas
    collection do
      get 'edit'
    end
  end
  resources :artists, :albums, :genres


  get '/login'  => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
