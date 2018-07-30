class Language < ApplicationRecord
  has_many :translations
  has_many :allergens, through: :translations
end
