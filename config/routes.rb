Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :albums, only: [ :index, :show, :update, :new, :create, :destroy ] do
    member do
      delete :destroy_photo
    end
  end

end
