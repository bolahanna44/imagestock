Rails.application.routes.draw do
  draw :api
  resources :images, only: :show
end
