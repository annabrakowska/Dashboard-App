class Teacher < ApplicationRecord
    has_many :courses 
    validates :age, numericality: {less_than: 150}
    validates :salary, numericality: {greater_than: 0}
end
