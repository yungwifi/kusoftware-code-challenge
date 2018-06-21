class User < ApplicationRecord
    has_many :message, dependent: :destroy
    has_many :proficiency, dependent: :destroy
end
