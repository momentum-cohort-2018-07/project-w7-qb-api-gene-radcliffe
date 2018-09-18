class Answer < ApplicationRecord
    belongs_to :question, counter_cache: true
    belongs_to :user
    belongs_to :answerable, polymorphic: true
    has_many :answers, as: :answerable
end
