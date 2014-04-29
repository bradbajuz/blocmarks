Blocmarks::Application.routes.draw do

  get 'hotlists/show'

  post :incoming, to: 'incoming#post'
  
  resources :bookmarks, only: [:index]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  match 'about', to: 'welcome#about', via: :get
  root 'welcome#index'
end
