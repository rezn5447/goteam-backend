Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, constraints:{format: :json} do
  	resources :users, only:[:create, :show] do
  		resources :stats, only:[:create,:update,:index]
  		resources :teams, only:[:create]
      resources :matches, only:[:index,:show,:update]
  	end
    get "/matches/all", to: "matches#all"
  	resources :sessions, only:[:create]
  	resources :sports, only:[:index] do
      post "/stats/find", to: "stats#find"
    end
  end
end
