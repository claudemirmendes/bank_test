Rails.application.routes.draw do
  resources :movimentantions
  resources :bank_agences
  resources :bank_accounts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
  authenticated :user do
    root 'home#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
  end
end
