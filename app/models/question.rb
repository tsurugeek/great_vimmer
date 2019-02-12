class Question < ApplicationRecord

  belongs_to :grade

  validates :sentence, presence: true

end
