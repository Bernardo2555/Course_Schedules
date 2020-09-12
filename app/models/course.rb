class Course < ApplicationRecord
  has_many :schedules
  has_many :students
end
