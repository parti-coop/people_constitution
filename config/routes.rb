Rails.application.routes.draw do
  root 'pages#home'

  resources :notices
  resources :events

  get 'admin', to: 'pages#admin'
end
