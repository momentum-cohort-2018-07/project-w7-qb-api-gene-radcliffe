class Question < ApplicationRecord
    include PgSearch
    scope :published,               -> { where.not(published_date: [nil, '']) }
    scope :published_and_answered, -> { published.where("answers_count > 0") }
  
    pg_search_scope :search_partial,
    against: [:title, :body],
    using: {
      tsearch: { prefix: true } #This enables partial word searching
    }
    belongs_to :user                    
    has_many :answers, dependent: :delete_all, as: :answerable
    # acts_as_votable
end
