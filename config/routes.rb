Rails.application.routes.draw do
  resources :students do
    addresses
  end
end
