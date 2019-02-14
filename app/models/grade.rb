class Grade < ApplicationRecord

  has_many :questions, dependent: :restrict_with_exception
  validates :title, presence: true

  scope :published, ->{ where(published: true)}

end
