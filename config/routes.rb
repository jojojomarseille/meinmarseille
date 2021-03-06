Rails.application.routes.draw do


  get 'legals/new'
  get 'legals/create'
  get 'legals/index'
  get 'contact/index'
  get 'contact/create'
  get 'home/index'
  ActiveAdmin.routes(self)
  resources :line_items
  resources :carts
  devise_for :users
  # le code ci-dessous n'est pas necessaire, je le garde au cas ou ca rebug, mais il est destiné a etre supprimé
  # devise_scope :users do
  #   get '/users/sign_out' => 'devise/sessions#delete'
  # end

  root to: 'products#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings, only: [:destroy, :index, :booking_by_user, :update]

get 'pages/cgu'
get 'pages/user'
get 'pages/zoneadmin'
get 'pages/contact'
get 'pages/equipe'
get 'pages/faq'
get 'pages/projet'
get 'pages/prix'

  get 'contacts' => 'contacts#index'
  get 'contacts/new'
  post 'contacts' => 'contacts#create'
  delete 'contacts/:id' => 'contacts#destroy'

  get 'legals' => 'legals#index'
  get 'legals/new'
  post 'legals' => 'legals#create'
  delete 'legals/:id' => 'legals#destroy'
  get 'legals/:id' => 'legals#show_admin'
  patch 'legals/:id' => 'legals#update'

  get 'faqs' => 'faqs#index'
  get 'faqs/new'
  post 'faqs' => 'faqs#create'
  get 'faqs/index_admin' => 'faqs#index_admin'
  get 'faqs/index_admin/:id' => 'faqs#show_admin'
  patch 'faqs/:id' => 'faqs#update'
  delete 'faqs/:id' => 'faqs#destroy'

#le nesting ci dessous est un essaie, si ca ne fonctionnepas, on l'enlevera

  #get 'products/new' => 'products#new'
  #post 'products/new' => 'products#create'

  #get 'products' => 'products#index'
  #post 'products' => 'products#create'

  #get 'products/:id' => 'products#show'
  patch 'products/:id' => 'products#update'

  #delete 'products/:id' => 'products#destroy'
  get 'productsby/:id' => 'products#index_by_categorie'
  get 'index_admin' => 'products#index_admin'
  get 'index_admin/:id' => 'products#show_admin'

  get 'zones' => 'zones#index'
  get 'zones/new'
  post 'zones' => 'zones#create'
  get 'zones/:id' => 'zones#show'
  patch 'zones/:id' => 'zones#update'
  delete 'zones/:id' => 'zones#destroy'

  #get 'categories' => 'categories#index'
  #get 'categories/new'
  #post 'categories/new' => 'categories#create'
  #post 'categories' => 'categories#create'
  #get 'categories/:id' => 'categories#show'
  #patch 'categories/:id' => 'categories#update'
  #delete 'categories/:id' => 'categories#destroy'

  resources :categories


  #resources :bookings


  get 'booking_by_user' => 'bookings#booking_by_users'

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

mount StripeEvent::Engine, at: '/stripe-webhooks'


end
