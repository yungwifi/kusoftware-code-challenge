class Proficiency < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :proficiency_level, inclusion: {in: 1..10}
end
