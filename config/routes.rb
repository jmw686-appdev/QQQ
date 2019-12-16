# frozen_string_literal: true

Rails.application.routes.draw do
  resources :attached_images
  resources :images
  resources :question_tags
  resources :tags
  resources :required_fields
  resources :question_templates
  resources :responses
  resources :upvotes
  resources :questions
  # Routes for the Attached image resource:

  # CREATE
  get("/attached_images/new", { :controller => "attached_images", :action => "new_form" })
  post("/create_attached_image", { :controller => "attached_images", :action => "create_row" })

  # READ
  get("/attached_images", { :controller => "attached_images", :action => "index" })
  get("/attached_images/:id_to_display", { :controller => "attached_images", :action => "show" })

  # UPDATE
  get("/attached_images/:prefill_with_id/edit", { :controller => "attached_images", :action => "edit_form" })
  post("/update_attached_image/:id_to_modify", { :controller => "attached_images", :action => "update_row" })

  # DELETE
  get("/delete_attached_image/:id_to_remove", { :controller => "attached_images", :action => "destroy_row" })

  #------------------------------

  # Routes for the Image resource:

  # CREATE
  get("/images/new", { :controller => "images", :action => "new_form" })
  post("/create_image", { :controller => "images", :action => "create_row" })

  # READ
  get("/images", { :controller => "images", :action => "index" })
  get("/images/:id_to_display", { :controller => "images", :action => "show" })

  # UPDATE
  get("/images/:prefill_with_id/edit", { :controller => "images", :action => "edit_form" })
  post("/update_image/:id_to_modify", { :controller => "images", :action => "update_row" })

  # DELETE
  get("/delete_image/:id_to_remove", { :controller => "images", :action => "destroy_row" })

  #------------------------------

  # Routes for the Question tag resource:

  # CREATE
  get("/question_tags/new", { :controller => "question_tags", :action => "new_form" })
  post("/create_question_tag", { :controller => "question_tags", :action => "create_row" })

  # READ
  get("/question_tags", { :controller => "question_tags", :action => "index" })
  get("/question_tags/:id_to_display", { :controller => "question_tags", :action => "show" })

  # UPDATE
  get("/question_tags/:prefill_with_id/edit", { :controller => "question_tags", :action => "edit_form" })
  post("/update_question_tag/:id_to_modify", { :controller => "question_tags", :action => "update_row" })

  # DELETE
  get("/delete_question_tag/:id_to_remove", { :controller => "question_tags", :action => "destroy_row" })

  #------------------------------

  # Routes for the Tag resource:

  # CREATE
  get("/tags/new", { :controller => "tags", :action => "new_form" })
  post("/create_tag", { :controller => "tags", :action => "create_row" })

  # READ
  get("/tags", { :controller => "tags", :action => "index" })
  get("/tags/:id_to_display", { :controller => "tags", :action => "show" })

  # UPDATE
  get("/tags/:prefill_with_id/edit", { :controller => "tags", :action => "edit_form" })
  post("/update_tag/:id_to_modify", { :controller => "tags", :action => "update_row" })

  # DELETE
  get("/delete_tag/:id_to_remove", { :controller => "tags", :action => "destroy_row" })

  #------------------------------

  # Routes for the Required field resource:

  # CREATE
  get("/required_fields/new", { :controller => "required_fields", :action => "new_form" })
  post("/create_required_field", { :controller => "required_fields", :action => "create_row" })

  # READ
  get("/required_fields", { :controller => "required_fields", :action => "index" })
  get("/required_fields/:id_to_display", { :controller => "required_fields", :action => "show" })

  # UPDATE
  get("/required_fields/:prefill_with_id/edit", { :controller => "required_fields", :action => "edit_form" })
  post("/update_required_field/:id_to_modify", { :controller => "required_fields", :action => "update_row" })

  # DELETE
  get("/delete_required_field/:id_to_remove", { :controller => "required_fields", :action => "destroy_row" })

  #------------------------------

  # Routes for the Question template resource:

  # CREATE
  get("/question_templates/new", { :controller => "question_templates", :action => "new_form" })
  post("/create_question_template", { :controller => "question_templates", :action => "create_row" })

  # READ
  get("/question_templates", { :controller => "question_templates", :action => "index" })
  get("/question_templates/:id_to_display", { :controller => "question_templates", :action => "show" })

  # UPDATE
  get("/question_templates/:prefill_with_id/edit", { :controller => "question_templates", :action => "edit_form" })
  post("/update_question_template/:id_to_modify", { :controller => "question_templates", :action => "update_row" })

  # DELETE
  get("/delete_question_template/:id_to_remove", { :controller => "question_templates", :action => "destroy_row" })

  #------------------------------

  # Routes for the Response resource:

  # CREATE
  get("/responses/new", { :controller => "responses", :action => "new_form" })
  post("/create_response", { :controller => "responses", :action => "create_row" })

  # READ
  get("/responses", { :controller => "responses", :action => "index" })
  get("/responses/:id_to_display", { :controller => "responses", :action => "show" })

  # UPDATE
  get("/responses/:prefill_with_id/edit", { :controller => "responses", :action => "edit_form" })
  post("/update_response/:id_to_modify", { :controller => "responses", :action => "update_row" })

  # DELETE
  get("/delete_response/:id_to_remove", { :controller => "responses", :action => "destroy_row" })

  #------------------------------

  # Routes for the Upvote resource:

  # CREATE
  get("/upvotes/new", { :controller => "upvotes", :action => "new_form" })
  post("/create_upvote", { :controller => "upvotes", :action => "create_row" })

  # READ
  get("/upvotes", { :controller => "upvotes", :action => "index" })
  get("/upvotes/:id_to_display", { :controller => "upvotes", :action => "show" })

  # UPDATE
  get("/upvotes/:prefill_with_id/edit", { :controller => "upvotes", :action => "edit_form" })
  post("/update_upvote/:id_to_modify", { :controller => "upvotes", :action => "update_row" })

  # DELETE
  get("/delete_upvote/:id_to_remove", { :controller => "upvotes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Question resource:

  # CREATE
  get("/questions/new", { :controller => "questions", :action => "new_form" })
  post("/create_question", { :controller => "questions", :action => "create_row" })

  # READ
  get("/questions", { :controller => "questions", :action => "index" })
  get("/questions/:id_to_display", { :controller => "questions", :action => "show" })

  # UPDATE
  get("/questions/:prefill_with_id/edit", { :controller => "questions", :action => "edit_form" })
  post("/update_question/:id_to_modify", { :controller => "questions", :action => "update_row" })

  # DELETE
  get("/delete_question/:id_to_remove", { :controller => "questions", :action => "destroy_row" })

  #------------------------------

  root 'application#landing'
  resource :launch, only: :create
  get '/config' => 'launches#xml_config'
  constraints(->(request) { request.host != 'qqq.firstdraft.com' }) do
    get '/teacher' => 'resources#teacher_backdoor'
    get '/student' => 'resources#student_backdoor'
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
