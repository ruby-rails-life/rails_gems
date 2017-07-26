# == Route Map
#
#                   Prefix Verb   URI Pattern                                       Controller#Action
#              rails_admin        /admin                                            RailsAdmin::Engine
#         new_user_session GET    /users/sign_in(.:format)                          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)                     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)                         devise/passwords#update
#                          PUT    /users/password(.:format)                         devise/passwords#update
#                          POST   /users/password(.:format)                         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                           devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)                          devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                             devise/registrations#edit
#        user_registration PATCH  /users(.:format)                                  devise/registrations#update
#                          PUT    /users(.:format)                                  devise/registrations#update
#                          DELETE /users(.:format)                                  devise/registrations#destroy
#                          POST   /users(.:format)                                  devise/registrations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format)                 devise/confirmations#new
#        user_confirmation GET    /users/confirmation(.:format)                     devise/confirmations#show
#                          POST   /users/confirmation(.:format)                     devise/confirmations#create
#          new_user_unlock GET    /users/unlock/new(.:format)                       devise/unlocks#new
#              user_unlock GET    /users/unlock(.:format)                           devise/unlocks#show
#                          POST   /users/unlock(.:format)                           devise/unlocks#create
#                     root GET    /(:locale)(.:format)                              home#index {:locale=>/en|ja/}
#                     home GET    (/:locale)/home(.:format)                         home#index {:locale=>/en|ja/}
#                     book GET    (/:locale)/book(.:format)                         book#index {:locale=>/en|ja/}
#              simpleforms GET    (/:locale)/simpleforms(/page/:page)(.:format)     simpleforms#index {:locale=>/en|ja/}
#                          GET    (/:locale)/simpleforms(.:format)                  simpleforms#index {:locale=>/en|ja/}
#                          POST   (/:locale)/simpleforms(.:format)                  simpleforms#create {:locale=>/en|ja/}
#           new_simpleform GET    (/:locale)/simpleforms/new(.:format)              simpleforms#new {:locale=>/en|ja/}
#          edit_simpleform GET    (/:locale)/simpleforms/:id/edit(.:format)         simpleforms#edit {:locale=>/en|ja/}
#               simpleform GET    (/:locale)/simpleforms/:id(.:format)              simpleforms#show {:locale=>/en|ja/}
#                          PATCH  (/:locale)/simpleforms/:id(.:format)              simpleforms#update {:locale=>/en|ja/}
#                          PUT    (/:locale)/simpleforms/:id(.:format)              simpleforms#update {:locale=>/en|ja/}
#                          DELETE (/:locale)/simpleforms/:id(.:format)              simpleforms#destroy {:locale=>/en|ja/}
#                  country GET    /country(.:format)                                country#index
#                 holidays GET    /holidays(.:format)                               holidays#index
#            holidays_edit GET    /holidays/edit(.:format)                          holidays#edit
#                          PUT    /holidays(.:format)                               holidays#update
#                   topics GET    /topics(.:format)                                 topics#index
#                          POST   /topics(.:format)                                 topics#create
#                new_topic GET    /topics/new(.:format)                             topics#new
#               edit_topic GET    /topics/:id/edit(.:format)                        topics#edit
#                    topic GET    /topics/:id(.:format)                             topics#show
#                          PATCH  /topics/:id(.:format)                             topics#update
#                          PUT    /topics/:id(.:format)                             topics#update
#                          DELETE /topics/:id(.:format)                             topics#destroy
#                    users GET    /users(.:format)                                  users#index
#                          POST   /users(.:format)                                  users#create
#                 new_user GET    /users/new(.:format)                              users#new
#                edit_user GET    /users/:id/edit(.:format)                         users#edit
#                     user GET    /users/:id(.:format)                              users#show
#                          PATCH  /users/:id(.:format)                              users#update
#                          PUT    /users/:id(.:format)                              users#update
#                          DELETE /users/:id(.:format)                              users#destroy
#         article_comments GET    /articles/:article_id/comments(.:format)          comments#index
#                          POST   /articles/:article_id/comments(.:format)          comments#create
#      new_article_comment GET    /articles/:article_id/comments/new(.:format)      comments#new
#     edit_article_comment GET    /articles/:article_id/comments/:id/edit(.:format) comments#edit
#          article_comment GET    /articles/:article_id/comments/:id(.:format)      comments#show
#                          PATCH  /articles/:article_id/comments/:id(.:format)      comments#update
#                          PUT    /articles/:article_id/comments/:id(.:format)      comments#update
#                          DELETE /articles/:article_id/comments/:id(.:format)      comments#destroy
#                 articles GET    /articles(.:format)                               articles#index
#                          POST   /articles(.:format)                               articles#create
#              new_article GET    /articles/new(.:format)                           articles#new
#             edit_article GET    /articles/:id/edit(.:format)                      articles#edit
#                  article GET    /articles/:id(.:format)                           articles#show
#                          PATCH  /articles/:id(.:format)                           articles#update
#                          PUT    /articles/:id(.:format)                           articles#update
#                          DELETE /articles/:id(.:format)                           articles#destroy
#
# Routes for RailsAdmin::Engine:
#   dashboard GET         /                                      rails_admin/main#dashboard
#       index GET|POST    /:model_name(.:format)                 rails_admin/main#index
#         new GET|POST    /:model_name/new(.:format)             rails_admin/main#new
#      export GET|POST    /:model_name/export(.:format)          rails_admin/main#export
# bulk_delete POST|DELETE /:model_name/bulk_delete(.:format)     rails_admin/main#bulk_delete
# bulk_action POST        /:model_name/bulk_action(.:format)     rails_admin/main#bulk_action
#        show GET         /:model_name/:id(.:format)             rails_admin/main#show
#        edit GET|PUT     /:model_name/:id/edit(.:format)        rails_admin/main#edit
#      delete GET|DELETE  /:model_name/:id/delete(.:format)      rails_admin/main#delete
# show_in_app GET         /:model_name/:id/show_in_app(.:format) rails_admin/main#show_in_app
#

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end

  scope '(:locale)', locale: /en|ja/ do
    root 'home#index'
    get 'home', to: 'home#index'
    get 'book', to: 'book#index'
    get 'book/bulkinsert', to: 'book#bulkinsert'
    concern :paginatable do
      get '(page/:page)', action: :index, on: :collection, as: ''
    end
    resources :simpleforms, concerns: :paginatable
  end

  get 'country', to: 'country#index'
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
