Rails.application.routes.draw do
  get 'tomato/index'
  get 'tomato/fun'
  get 'welcome/index'
  resources :articles
  root 'welcome#index'
end
