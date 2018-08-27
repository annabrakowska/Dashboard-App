class Student < ApplicationRecord
    belongs_to :cohort
    validates :age, numericality: {less_than: 150}
end
