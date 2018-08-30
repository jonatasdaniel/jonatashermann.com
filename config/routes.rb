Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#index'
  post '/send_contact_email', to: 'pages#send_contact_email'
end
