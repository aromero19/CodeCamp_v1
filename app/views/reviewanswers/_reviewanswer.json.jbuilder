json.extract! reviewanswer, :id, :review_id, :question_id, :answer_id, :created_at, :updated_at
json.url reviewanswer_url(reviewanswer, format: :json)
