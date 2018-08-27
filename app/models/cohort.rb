class Cohort < ApplicationRecord
    belongs_to :course
    has_many :students
end
