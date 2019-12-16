json.extract! question_template, :id, :context_id, :name, :points_awarded, :created_at, :updated_at
json.url question_template_url(question_template, format: :json)
