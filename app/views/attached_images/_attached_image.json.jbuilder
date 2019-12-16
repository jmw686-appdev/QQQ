json.extract! attached_image, :id, :image_id, :response_id, :question_id, :created_at, :updated_at
json.url attached_image_url(attached_image, format: :json)
