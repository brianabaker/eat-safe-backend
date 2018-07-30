class Allergen < ApplicationRecord
  has_many :translations
  has_many :languages, through: :translations

  def self.find_translation(allergen, language, gender= "content_default")
    @allergen = Allergen.find_by(name: allergen)
    @translation = @allergen.translations.find {|trans| trans.language.name == language}
    @final_translation = @translation[gender]
  end

end
