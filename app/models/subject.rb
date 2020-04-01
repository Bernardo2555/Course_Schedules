class Subject < ApplicationRecord
    belongs_to :professor

    has_many :grades
    has_many :students, through: :grades
end
