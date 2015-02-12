Rails.application.routes.draw do
get '/:action' => 'contacts#:action'
get '/emails/new/:contact_id' => 'emails#new'
 resources :contacts do
 resources :numbers
 resources :emails
 end
end
