Rails.application.routes.draw do
get '/' => 'contacts#index'
 resources :contacts do
 resources :numbers
 resources :emails
 end
end
