Rails.application.routes.draw do
  root "home#index"
  get "projects/index" => "projects#index"
  get "team/index" => "team#index"
  get "donate/index" => "donate#index"
  get "join/index" => "join#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
