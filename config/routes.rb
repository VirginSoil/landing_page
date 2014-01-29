LandingPage::Application.routes.draw do
  root 'welcome#index'
  resources :emails, only: :create
end
