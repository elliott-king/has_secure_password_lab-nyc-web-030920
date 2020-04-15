Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "sessions" => "sessions#create"

  post "users" => "users#create"
  get "users/new" => "users#new", as: "new_user"
end
