Rails.application.routes.draw do
 

  resources :projects
  resources :teams
  as :users do
    put '/user/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

   devise_for :user, controllers: {
  	registrations: 'registrations',
  	confirmations: 'confirmations'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
