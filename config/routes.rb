Rails.application.routes.draw do
  devise_for :admins
  get 'home' => 'home#home'
  get 'contact' => 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'admin' => 'admin#admin'
  resources :home
  resources :admin
  resources :posts, only: [:show] do
    resources :comments
  end
  root 'home#home'
end
