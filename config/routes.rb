Rails.application.routes.draw do
  get 'api/v1/members', to: 'members#index'
  post 'api/v1/members/new', to: 'members#create'
end
