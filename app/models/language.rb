class Language < ApplicationRecord
    has_many :users, through: :messages
    has_many :messages, dependent: :restrict_with_error
    has_many :proficiencies, dependent: :restrict_with_error
end
