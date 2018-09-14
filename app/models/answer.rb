class Answer < ApplicationRecord
    belongs_to :answerable, polymorphic: true
    #has_many :answers, as: :answerable
end
