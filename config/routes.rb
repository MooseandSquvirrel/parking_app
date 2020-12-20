Rails.application.routes.draw do

  get '/search' => 'staff#search'
  get '/marvin_search' => 'staff#marvin_search'
  resources :cars, path: ""

  root 'cars#index'
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session_path
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
