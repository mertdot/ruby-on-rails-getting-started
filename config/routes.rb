Rails.application.routes.draw do
  get 'welcome/index' # tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action.

  resources :articles do
    resources :comments
  end #Rails provides a resources method which can be used to declare a standard REST resource.

  root 'welcome#index' #This was created earlier when you ran the controller generator (rails generate controller Welcome index). / tells Rails to map requests to the root of the application to the welcome controller's index action
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
