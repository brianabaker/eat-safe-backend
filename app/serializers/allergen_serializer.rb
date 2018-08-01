class AllergenSerializer < ActiveModel::Serializer
  attributes :name
  has_many :translations
  has_many :languages, through: :translations
end
