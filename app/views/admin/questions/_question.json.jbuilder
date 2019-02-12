json.extract! question, :id, :grade_id, :sentence, :answer, :published, :created_at, :updated_at
json.url admin_grade_question_url(question.grade, question, format: :json)
