# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'endpoints#index'
  resources :endpoints do
    get 'stats', to: 'stats#show'
  end

  get 'stats', to: 'stats#index'

  namespace :api do
    get '/*path', to: 'endpoints#execute', constraints: EndpointConstraint
  end
end
