Rails.application.routes.draw do

  get 'searches/show'

  get 'hashtags/show'

  get 'following_relationships/create'

  get 'photo_shouts/create'

  get 'text_shouts/create'

  root to: 'homes#show', via: :get
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resource :search, only: [:show]

  resources :users, only: [:index, :new, :create, :show] do
  	post 'follow' => 'following_relationships#create'
    delete 'follow' => 'following_relationships#destroy'
  end

  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :hashtags, only: [:show]

end
