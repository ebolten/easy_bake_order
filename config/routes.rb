Rails.application.routes.draw do
  resources :order_menus
  resources :ingredients
  resources :orders
  resources :menu_items
  resources :bakeries
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
