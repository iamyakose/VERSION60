Rails.application.routes.draw do
  resources :articles
  resources :votes
  resources :users
  resources :tags
  resources :taggings
  resources :reports
  resources :profiles
  resources :podcasts
  resources :follows
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/', to: "pages#products"
end
