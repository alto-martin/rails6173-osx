Rails.application.routes.draw do
  resources :posts
  resources :boards
  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/about'
  get 'about' => 'pages#about'
  root 'pages#about'
end

