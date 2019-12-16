namespace :api, defaults: { format: :json } do
  namespace :v1 do
    resources :images, only: :create
  end
end
