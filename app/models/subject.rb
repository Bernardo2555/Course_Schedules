class Subject < ApplicationRecord
  belongs_to :professor, optional: true

  has_many :grades
  has_many :students, through: :grades
end
