Rails.application.routes.draw do
  resources :linked_in_contacts
  resources :linked_in_contacts, defaults: {format: :json}
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
