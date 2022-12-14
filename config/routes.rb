# frozen_string_literal: true

Rails.application.routes.draw do
  root "pages#home"
  devise_for :users

  devise_scope :user do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  get "/list", to: "lists#index"

  resources :tasks
  resources :pages

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
