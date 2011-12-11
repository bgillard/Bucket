Bucketlist::Application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  
  root :to => "pages#home"
	
  match '/contact',  :to => 'pages#contact'
  match '/about',    :to => 'pages#about'
  match '/register', :to => 'users#new'
  match '/login',    :to => 'sessions#new'
  match '/logout',   :to => 'sessions#destroy'
  
end