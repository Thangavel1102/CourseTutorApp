Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/create', to: 'course_mapped_tutor#create'
      get '/list', to: 'course_mapped_tutor#index'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
