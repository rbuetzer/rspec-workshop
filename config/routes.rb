Rails.application.routes.draw do
  resources :players

  root 'home#home'
end
