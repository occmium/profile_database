Rails.application.routes.draw do
  resources :sync_requests
  resources :profiles
  get 'profile/autoupdate', to: "profiles#autoupdate"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
