Bbbtesting::Application.routes.draw do
  resources :homes
  resources :articles  
  resources :notifications
  root :to => 'homes#index'
end