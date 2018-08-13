class Api::V1::AllergensController < ApplicationController

  before_action :set_allergen, only: [:show_translations]
  before_action :all_allergens, only: [:index]

  def index
    render json: {status: 'SUCCESS', message: "All Allergens", data: all_allergens}, each_serializer: AllergenSerializer, status: :ok
  end

  def show_translations
    translations = set_allergen.translations
    if !translations.empty?
      alpha = translations.sort_by {|translation| translation.language.name }
      render json: alpha, status: :ok
    else
      render json: {status: 'NOT FOUND', message: 'Translation not found'}, status: :not_found
    end
  end

  def search
    query = params[:allergen].downcase
    if query
      allergen = Allergen.where('name LIKE ?', "%#{query}%")
      if (!allergen.empty? && allergen.length == 1)
        render json: {status: 'SUCCESS', message: 'Found Allergen', data: allergen[0]}, status: :ok
      else
        all_allergens = Allergen.all
        render json: {status: 'NOT FOUND', message: 'Allergen Not Found', data: all_allergens}, status: :not_found
      end
    end
  end # closes search

  private

  def all_allergens
    @allergens = Allergen.all
  end

  def set_allergen()
    @allergen = Allergen.find_by(name: params[:name])
  end

end
