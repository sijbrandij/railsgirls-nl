RailsGirls::Application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :sponsors
  get 'participate' => 'meeting#index'
  get 'connect' => 'connect#index'
  get 'contributors' => 'contributors#index'

  resources :resources do
    post 'upvote', on: :member, as: :upvote
    post 'downvote', on: :member, as: :downvote
  end

  root to: 'meeting#index'
end
