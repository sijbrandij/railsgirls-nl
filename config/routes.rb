RailsGirls::Application.routes.draw do

  match 'participate' => 'meeting#index'
  match 'connect' => 'connect#index'
  match 'contributors' => 'contributors#index'

  resources :comments do
    get :mark_as_spam, :unmark_as_spam, on: :member
  end

  resources :resources do
    post 'upvote', :on => :member, :as => :upvote
    post 'downvote', :on => :member, :as => :downvote
  end

  root :to => 'meeting#index'
end
