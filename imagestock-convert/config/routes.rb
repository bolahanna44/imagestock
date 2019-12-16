Rails.application.routes.draw do
  resources :images, only: :show
end
