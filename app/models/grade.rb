class Grade < ApplicationRecord
    belongs_to :subject, optional: true
    belongs_to :student, optional: true
end
