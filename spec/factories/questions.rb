FactoryBot.define do
  factory :question do
    grade_id { 1 }
    sentence { "MyString" }
    answer { "MyString" }
    published { false }
  end
end
