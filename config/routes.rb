Rails.application.routes.draw do
  root "home#index"
  get 'home/confirm' => redirect("/")
  get 'home/thanks' => redirect("/")
  get "projects/index" => "projects#index"
  get "team/index" => "team#index"
  get "support/index" => "support#index"
  get "join/index" => "join#index"
  get "vrgame/index" => "vrgame#index"
  get "film/index" => "film#index"

  post "home/confirm" => "home#confirm"
  post "home/thanks" => "home#thanks"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
