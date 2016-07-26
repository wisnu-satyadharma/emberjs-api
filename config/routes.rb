Rails.application.routes.draw do
  devise_for :users, skip: :all
  namespace :api do
  	namespace :v1 do
  		resources :invitations
  		resources :libraries
  		resources :contacts
  		resources :authors
  		resources :books      
      devise_scope :user do
        post  "/users/sign_in" => "sessions#create"
        delete "/sessions" => "sessions#destroy"
      end

  	end
	end

end
