mount Sidekiq::Web, at: '/sidekiq'

resources :users,      only: %i[index show edit update destroy]
resources :tasks,      only: %i[index show edit update]
resources :moderation, only: %i[index update]

root to: 'dashboard#index'
