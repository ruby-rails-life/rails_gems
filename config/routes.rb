Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
    
  scope "(:locale)", locale: /en|ja/ do
    root 'home#index'
    get 'home/index'
    get 'book', to: 'book#index'
    concern :paginatable do
      get '(page/:page)', action: :index, on: :collection, as: ''
    end
    resources :simpleforms, concerns: :paginatable
  end
  
  get 'country', to:'country#index'
  get 'holidays', to: 'holidays#index'
  get 'holidays/edit'
  put 'holidays', to: 'holidays#update'
  
  resources :topics
  resources :users
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
