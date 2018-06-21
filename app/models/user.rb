class User < ApplicationRecord
    has_many :languages, through: :messages
    has_many :messages, dependent: :destroy
    has_many :proficiencies, dependent: :destroy
end
