json.extract! assessment, :id, :question_id, :answer_id, :description, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)
