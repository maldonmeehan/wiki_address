Rails.application.routes.draw do
  resources :types do
    resources :companies
  end
end
