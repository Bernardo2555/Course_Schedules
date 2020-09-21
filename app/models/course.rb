class Course < ApplicationRecord
  has_many :schedules, dependent: :nullify
end
