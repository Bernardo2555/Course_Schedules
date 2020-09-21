class ClassRoom < ApplicationRecord
  has_many :students, dependent: :nullify
  belongs_to :schedule, inverse_of: :class_rooms
end
