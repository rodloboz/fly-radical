Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :schools do
    member do
      get 'activate'
    end
    resources :lessons do
      member do
        get 'activate'
      end
    end

  end

  get 's' => 'pages#search', as: :search

  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
