Rails.application.routes.draw do
  resources :questions
  resources :owners
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"'
  root "dashboards#index"
end
