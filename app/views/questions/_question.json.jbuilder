json.extract! question, :id, :title, :body, :enrollment_id, :assignment_tag, :anonymous_to_all, :anonymous_to_students, :marked_good_by_instructor, :created_at, :updated_at
json.url question_url(question, format: :json)
