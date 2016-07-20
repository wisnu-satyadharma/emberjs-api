Rails.application.routes.draw do
  namespace :api do
  	namespace :v1 do
  		resources :invitations
  		resources :libraries
  	end
	end
end
