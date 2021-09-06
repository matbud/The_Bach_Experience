Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [ :new, :create ] do
    resources :plannings, only: [:create]
    resources :guests, only: [:create]
  end
  get '/events/:id/choose_recommendation', to: 'events#choose_recommendation', as: :choose_recommendation
  patch '/events/:id/confirm_recommendation', to: 'events#confirm_recommendation', as: :confirm_recommendation
  get '/events/:id/summary', to: 'events#summary', as: :summary
  patch '/events/:id/confirm_event', to: 'events#confirm_event', as: :confirm_event
  get '/events/:id/invite', to: 'events#invite', as: :invite

  get 'dashboards/:id', to: 'dashboards#show', as: :dashboard
  get '/draft', to: 'pages#draft'
  # To be removed
  get '/test', to: 'pages#test'

  resources :plannings, only: [ :edit, :update, :destroy ]
  patch '/guests/:id/accept', to: "guests#accept", as: :accept_invitation
  patch '/guests/:id/reject', to: "guests#reject", as: :reject_invitation
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
