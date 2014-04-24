Blocmarks::Application.routes.draw do
  
  resources :bookmarks, only: [:index]

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  post :incoming, to: 'bookmarks#create'
  match 'about', to: 'welcome#about', via: :get
  root 'welcome#index'
end
