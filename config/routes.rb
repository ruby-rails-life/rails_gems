Rails.application.routes.draw do
  get 'country/index'
  resources :topics
  resources :users
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
