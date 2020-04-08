class Schedule < ApplicationRecord
  belongs_to :professor #,:polymorphic => true
  belongs_to :course #,:polymorphic => true
end
