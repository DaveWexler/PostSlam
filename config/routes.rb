Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD

  root to: "home#index"
=======
  devise_scope :user do
    root to: "home#index"
  end
>>>>>>> 79ba6f9003a19e89328bb8925ab5d19f73a2e37c
end
