Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :posts

  devise_scope :user do
    root to: "home#index"
  end

  get '/contact', to: 'home#contact'
  get '/about', to: 'home#about'
end
