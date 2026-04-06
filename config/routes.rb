Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"
  get "about", to: "pages#about"
  get "projects/:slug", to: "pages#project", as: :project
end
