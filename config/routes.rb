Blocmarks::Application.routes.draw do


  devise_for :users
  match 'about', to: 'welcome#about', via: :get
  root 'welcome#index'
end
