Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    # /restaurants/...
    resources :reviews, only: [ :new, :create ]
  end
end
