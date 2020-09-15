class Student < ApplicationRecord
  belongs_to :class_room, required: false, inverse_of: :students
end
