class Proficiency < ApplicationRecord
  belongs_to :user
  belongs_to :language
  validates :proficiency_level, inclusion: {in: 1..10, message: "cannot be greater than 10 or less than 1"}
end
