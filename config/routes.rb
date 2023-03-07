Rails.application.routes.draw do
  devise_scope :user do
    root :to => "devise/registrations#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'conversations/:id', to: 'conversations#show'


  devise_for :users
  resources :messages
  resources :conversations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
