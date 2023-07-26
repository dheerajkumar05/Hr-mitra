Rails.application.routes.draw do
  resources :students
  devise_for :users, controllers:{
  sessions: 'users/sessions',
  registrations: 'users/registrations',
  passwords: 'users/passwords',
  confirmations: 'users/confirmations'

}

  root 'welcome#index'
  resources  :documents
  resources  :employees
  # Public pages routes
  get 'about' => 'page#about_us'
  get 'contact' => 'page#contact_us'
  get 'privacy-policy' => 'page#privacy_policy'
  get 'term-and-condition' => 'page#Term_and_condition'
end
