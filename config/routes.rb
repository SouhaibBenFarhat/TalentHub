Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions:      'api/users/sessions',
    registrations: 'api/users/registrations'
  }
  namespace :api do
    resources :work_experiences
  end
  match '*path', to: 'errors#catch_four_o_four', via: :all

end
