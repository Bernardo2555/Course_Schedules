class Schedule < ApplicationRecord
  belongs_to :professor, optional: true
  belongs_to :course, optional: true
end
