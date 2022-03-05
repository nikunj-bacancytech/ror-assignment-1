Rails.application.routes.draw do
  resources :sectors
  resources :industries
  resources :appointments
  resources :physicians
  resources :patients
  get 'welcome/index'
  root 'welcome#index'
end
