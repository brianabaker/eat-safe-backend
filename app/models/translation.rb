class Translation < ApplicationRecord
  belongs_to :language
  belongs_to :allergen
end
