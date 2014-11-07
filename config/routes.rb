SampleApp::Application.routes.draw do
 
  devise_for :users , :controllers => { :registrations => "registrations" }
  resources :printers
   resources :incidents do
    member do
      put :showAllIncidents
    end
  end
  resources :consommables
 
  

  # devise_for :users, :controllers => { :registrations => "registrations" }, :skip => [:registrations, :sessions] do 

  #   get 'signup' => 'devise/registrations#new', :as => :new_user_registration 
  #   post 'signup' => 'devise/registrations#create', :as => :custom_user_registration 
  #   get 'users/cancel' => 'devise/registrations#cancel', :as => :cancel_user_registration 
  #   get 'account/edit' => 'devise/registrations#edit', :as => :custom_edit_user_registration 
  #   put 'account' => 'devise/registrations#update', :as => :custom_update_user_registration
  #   delete 'users/cancel' => 'devise/registrations#destroy'   
  #   # devise/sessions 
  #   get 'signin' => 'devise/sessions#new', :as => :new_user_session 
  #   post 'signin' => 'devise/sessions#create', :as => :user_session 
  #   delete 'signout' => 'devise/sessions#destroy', :as => :destroy_user_session

  # end
  match '/new', :to => 'users#new' , :via => [:get]
  match '/edit',    :to => 'users#edit', :via => [:get]

  match '/show',    :to => 'printers#show', :via => [:get], :controllers => { :printers => "printers" }

  match '/show',    :to => 'consommables#show', :via => [:get], :controllers => { :consommables => "consommables" }

  match '/show',    :to => 'incidents#show', :via => [:get], :controllers => { :incidents => "incidents" }

  match '/contact', :to => 'pages#contact' , :via => [:get]
  match '/about',   :to => 'pages#about', :via => [:get]

  match '/recherche',    :to => 'pages#recherche', :via => [:get]
  match '/home',    :to => 'pages#home', :via => [:get]
  match '/inscrip2',    :to => 'pages#inscrip2', :via => [:get]
  match '/test',    :to => 'pages#test', :via => [:get]
  match '/ajouterImprimante',    :to => 'pages#ajouterImprimante', :via => [:get]



  match '/index',    :to => 'printers#index', :via => [:get], :controllers => { :printers => "printers" }


  root :to => 'pages#inscription'
  # if user_signed_in?
  #   root :to => 'pages#inscription'
  # else
  #   root :to => 'users#sign_in'
  # end
end