class TranslationSerializer < ActiveModel::Serializer
  # attributes :word, :content_default
  # has_many :translations
  attributes :word, :content_default, :content_female
  belongs_to :language
  belongs_to :allergen
end
