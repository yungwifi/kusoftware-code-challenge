class User < ApplicationRecord
    has_many :messages 
    has_many :proficiencies 
    has_many :languages, through: :messages && :proficiencies
end
