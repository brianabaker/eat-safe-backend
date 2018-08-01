class LanguageSerializer < ActiveModel::Serializer
  attributes :name
  has_many :translations
end
