SampleApp::Application.routes.draw do
 
  match '/new', :to => 'users#new' , :via => [:get]
  match '/contact', :to => 'pages#contact' , :via => [:get]
  match '/about',   :to => 'pages#about', :via => [:get]
  match '/profil',    :to => 'pages#profil', :via => [:get]
  match '/recherche',    :to => 'pages#recherche', :via => [:get]
  match '/home',    :to => 'pages#home', :via => [:get]
  match '/inscrip2',    :to => 'pages#inscrip2', :via => [:get]
  match '/test',    :to => 'pages#test', :via => [:get]



  match '/about',    :to => 'users#about', :via => [:get]

  root :to => 'pages#inscription'
end