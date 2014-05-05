Blocmarks::Application.routes.draw do

  post :incoming, to: 'incoming#create'
  
  resources :bookmarks, only: [:index, :destroy]
  resources :hotlists, only: [:index]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  
  match 'about', to: 'welcome#about', via: :get
  root 'welcome#index'
end
