json.extract! response, :id, :body, :enrollment_id, :question_id, :anonymous_to_all, :anonymous_to_students, :parent_id, :marked_as_answer, :marked_good_by_instructor, :created_at, :updated_at
json.url response_url(response, format: :json)
