class Schedule < ApplicationRecord
  belongs_to :user, inverse_of: :schedules
  belongs_to :course, inverse_of: :schedules
  has_many :class_rooms, inverse_of: :schedule, dependent: :delete_all

  accepts_nested_attributes_for :class_rooms, reject_if: :all_blank, allow_destroy: true
end
