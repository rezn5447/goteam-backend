Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, constraints:{format: :json} do
    resources :users, only:[:create, :show] do
    	resources :states, only:[:create,:update]
    end
    resources :sessions, only:[:create]
    resources :sports, only:[:index]
  end
end
