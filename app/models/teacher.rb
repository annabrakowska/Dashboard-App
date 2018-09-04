class Teacher < ApplicationRecord
    has_many :courses 
    validates :age, numericality: {less_than: 150}
    validates :salary, numericality: {greater_than: 0}
    
    has_one_attached :profile_picture
    has_many_attached :uploads

end
