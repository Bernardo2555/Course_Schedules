class Student < ApplicationRecord
  has_many :grades
  has_many :subjects, through: :grades
end
