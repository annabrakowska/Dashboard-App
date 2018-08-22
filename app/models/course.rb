class Course < ApplicationRecord
    has_many :cohorts
    validates :hours, numericality: {greater_than: 0}
end
