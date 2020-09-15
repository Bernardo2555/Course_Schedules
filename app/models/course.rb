class Course < ApplicationRecord
  has_many :class_rooms
  has_many :schedules
end
