Rails.application.routes.draw do
  resources :events
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get 'signup' => 'devise/registrations#new'
    get "tweets" => 'tweets'
    get "events" => 'events'

  end
  #get 'pages/home'
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contactus'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
