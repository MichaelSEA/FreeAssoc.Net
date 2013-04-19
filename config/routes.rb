FreeAssocNet::Application.routes.draw do

  get "about/index"

  root :to => 'home#index'
  devise_for :users
  resources :users, :only => [:show, :index]
  resources :about, :only => :index

  match 'testimonials' => 'home#testimonials'
  match 'resume' => 'home#resume'
  match 'ngn_comdex' => 'home#ngn_comdex'

end
