json.extract! question, :id, :description, :comments, :created_at, :updated_at
json.url question_url(question, format: :json)
