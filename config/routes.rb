Rails.application.routes.draw do
  resources :schedules
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'home/index'
  root to: 'home#index' 

  #default_url_options Rails.application.config.action_mailer.default_url_options
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
