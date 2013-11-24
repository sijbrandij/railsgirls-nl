RailsGirls::Application.routes.draw do

  match 'participate' => 'meeting#index'
  match 'connect' => 'connect#index'
  match 'contributors' => 'contributors#index'

  resources :resources do
    post 'upvote', :on => :member, :as => :upvote
    post 'downvote', :on => :member, :as => :downvote
  end

  root :to => 'meeting#index'
end
