Blocmarks::Application.routes.draw do
  
  devise_for :users
  
  get "welcome/index"
  get "welcome/about"
  # match 'about', to: 'welcome#about', via: :get
  root 'welcome#index'
end
