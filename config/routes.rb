Rails.application.routes.draw do
  mount Redactor2Rails::Engine => '/redactor2_rails'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :notices
  resources :events

  get 'admin', to: 'pages#admin'
end
