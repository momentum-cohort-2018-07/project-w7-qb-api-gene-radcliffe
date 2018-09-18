class Question < ApplicationRecord
    scope :published,               -> { where.not(published_date: [nil, '']) }
    scope :published_and_answered, -> { published.where("answers_count > 0") }
    
    belongs_to :user
    has_many :answers, as: :answerable

end
