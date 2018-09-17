class Email < ApplicationRecord
    belongs_to :emailable, polymorphic: true
    belongs_to :user
end
