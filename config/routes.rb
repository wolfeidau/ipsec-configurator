IpsecConfigurator::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'settings', to: 'users#edit', as: 'settings'

  resources :users
  resources :sessions

  get 'about', to: 'welcome#about', as: 'about'
  get 'contact', to: 'welcome#contact', as: 'contact'

  root :to => 'welcome#index'

end
