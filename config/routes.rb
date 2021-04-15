Rails.application.routes.draw do

  root to: 'homes#top'
  get '/home/about' => 'homes#about', as: "about"


  devise_for :farmers, controllers: {
    sessions: 'farmers/sessions',
    passwords: 'farmers/passwords',
    registrations: 'farmers/registrations'
  }

  namespace :producer do

    resources :topics, only: [:new, :index, :create, :show, :edit, :destroy]

    resources :farmers, only: [:edit, :index, :update, :destroy] do
      collection do
        get 'my_page'
        get 'unsubscribe'
      end
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
    end

    resources :farmers, only:[:index, :show] do
      collection do
        get 'serch'
      end
    end

    resources :topics, only:[:index, :show] do
      resources :topic_comments, only:[:create, :destroy]
      resource :favorites, only:[:create, :destroy]
    end

  end

end
