class Language < ApplicationRecord
    has_many :message, dependent: :restrict_with_error
    has_many :proficiency, dependent: :restrict_with_error
end
