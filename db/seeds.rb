# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grade.transaction do
  grade = Grade.create(title: 'Great Vimmer!!!', published: true, grade_num: 1)
  
  grade.questions.create(published: true, sentence: 'move to up', answer: 'k')
  grade.questions.create(published: true, sentence: 'move to down', answer: 'j')
  grade.questions.create(published: true, sentence: 'move to left', answer: 'h')
  grade.questions.create(published: true, sentence: 'move to right', answer: 'l')
end
