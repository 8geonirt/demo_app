DemoApp::Application.routes.draw do
  #get "static_pages/home"
  #get "static_pages/help"
  #match '/', to: 'static_pages#home', via: 'get'
  get "users/new"
  match '/signup',  to: 'users#new',            via: 'get'
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  #get "static_pages/about"
  #get "static_pages/contact"
  resources :microposts

  resources :users
end
