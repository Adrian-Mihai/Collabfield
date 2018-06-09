Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#index'
  
  # change the root
  devise_scope :users do
    get 'login', to: 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
