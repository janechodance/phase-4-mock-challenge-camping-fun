class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups
    validates :name, presence: {message: "validation errors"}
    validates :age, numericality: {greater_than_or_equal_to: 8, less_than_or_equal_to: 18, message: "validation errors"}
end
