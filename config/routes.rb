Rails.application.routes.draw do
  resources :owners
 
  root "dashboards#index"
end
