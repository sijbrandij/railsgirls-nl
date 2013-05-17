RailsGirls::Application.routes.draw do

  resources :events do
    collection do
      get :import
    end
  end

  match 'participate' => 'meeting#index'
  
  resources :comments

  resources :resources do
    post 'upvote', :on => :member, :as => :upvote
    post 'downvote', :on => :member, :as => :downvote
  end

  root :to => 'meeting#index'
end
