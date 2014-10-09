SampleApp::Application.routes.draw do

  match '/new', :to => 'users#new' , :via => [:get]
  match '/contact', :to => 'pages#contact' , :via => [:get]
  match '/about',   :to => 'pages#about', :via => [:get]
  match '/help',    :to => 'pages#help', :via => [:get]
  match '/about',    :to => 'users#about', :via => [:get]

  root :to => 'pages#home'
end