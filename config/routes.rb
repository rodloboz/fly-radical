Rails.application.routes.draw do
  resources :schools do
    member do
      get 'activate'
    end
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
