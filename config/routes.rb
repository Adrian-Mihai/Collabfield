Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "registrations"}
  root to: 'pages#index'

  # change the root devise/sessions#new to login
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  # change the root devise/registrations#new to sign_up
  devise_scope :user do
    get 'sign_up', to: 'devise/registrations#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
