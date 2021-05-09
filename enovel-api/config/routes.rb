# frozen_string_literal: true

Rails.application.routes.draw do
  scope :api do
    scope :v1 do
      post '/users', to: 'users#create'
      get '/users', to: 'users#index'
    end
  end
end
