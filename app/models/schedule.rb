class Schedule < ApplicationRecord
  belongs_to :users #,:polymorphic => true
  belongs_to :course #,:polymorphic => true
end
