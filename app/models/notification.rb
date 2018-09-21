class Notification < ApplicationRecord
  belongs_to :messageable, polymorphic: true
end
