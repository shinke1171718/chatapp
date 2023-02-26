Rails.application.routes.draw do
  devise_scope :user do
    root :to => "devise/sessions#new"
  end
  
  get "users/:id" => "conversations#show"

  def after_sign_in_path_for(resource)
    ‘/posts’
  end
  
  devise_for :users
  resources :messages
  resources :conversations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
