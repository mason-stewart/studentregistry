StudentRegistry::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => "home#index"

  api :version => 1 do
    resources :students
  end
end
