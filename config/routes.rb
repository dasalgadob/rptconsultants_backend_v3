Rails.application.routes.draw do
  namespace :reference_tables do
    resources :sectors
    resources :role_levels
    resources :position_types
    resources :degrees
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
