json.extract! question, :id, :grade_id, :sentence, :answer, :published, :created_at, :updated_at
json.url question_url(question, format: :json)
