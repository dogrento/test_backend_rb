# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  get '/cities', to: 'cities#index'
  get '/cities/show', to: 'cities#show'
  get '/search', to: 'cities#search'
  # post '/cities/search', to: 'cities#search'

  resources :cities

  # resources :articles do
  #   resources :comments
  # end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
