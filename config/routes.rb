Rails.application.routes.draw do
	root "application#landing"
  resource :launch, only: :create
  get "/config" => "launches#xml_config"
  constraints(->(request) { request.host != "qqq.firstdraft.com" }) do
    get "/teacher" => "resources#teacher_backdoor"
    get "/student" => "resources#student_backdoor"
  end
	resources :users, only: %i[]
	resources :submissions, only: %i[]
	resources :contexts, only: %i[]
	resources :resources, only: %i[show edit]
	resources :enrollments, only: %i[]
	resources :consumptions, only: %i[]
	resources :tool_consumers, only: %i[]
	resources :credentials, only: %i[]
  devise_for :administrators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
