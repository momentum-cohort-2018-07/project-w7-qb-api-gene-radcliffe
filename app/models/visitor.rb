class Visitor < ApplicationRecord
    has_many :questions
    has_many :answers
end
