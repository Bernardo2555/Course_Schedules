class ClassRoom < ApplicationRecord
  has_many :students
  belongs_to :schedule, inverse_of: :class_rooms
end
