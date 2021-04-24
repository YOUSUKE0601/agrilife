Rails.application.routes.draw do

  root to: 'homes#top'


  devise_for :farmers, controllers: {
    sessions: 'farmers/sessions',
    passwords: 'farmers/passwords',
    registrations: 'farmers/registrations'
  }

  namespace :producer do

    resources :topics, only: [:new, :index, :create, :show, :edit, :destroy]

    resources :farmers, only: [:edit, :index, :update, :destroy] do
      member do
        get "follower"
      end
      collection do
        get 'my_page'
        get 'unsubscribe'
      end
    end

    resources :end_users do
      resources :rooms, only: [:create, :index, :show]
      resources :chats, only: [:create]
    end


  end

  devise_for :end_users, controllers: {
      sessions: 'end_users/sessions',
      passwords: 'end_users/passwords',
      registrations: 'end_users/registrations'
    }
  
  

  namespace :public, path: "" do


    resources :end_users, only:[:edit, :update, :destroy] do
      collection do
        get 'unsubscribe'
        get 'my_page'
      end
      member do
        get 'favorites'
        get 'following'
        get 'chater'
      end
    end

    resources :farmers, only:[:index, :show] do
      resources :relationships, only:[:create, :destroy]
      collection do
        get 'search'
      end
      resources :rooms, only:[:create, :index, :show]
      resources :chats, only:[:create]
    end


    resources :topics, only:[:index, :show] do
      resources :topic_comments, only:[:create, :destroy]
      resource :favorites, only:[:create, :destroy]
    end

  end

end
