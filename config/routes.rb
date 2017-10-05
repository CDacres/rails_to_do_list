Rails.application.routes.draw do
  devise_for :users
  get 'lists/index'

  get 'lists/show'

  get 'lists/edit'

  get 'lists/create'

  get 'lists/new'

  get 'lists/update'

  get 'lists/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
