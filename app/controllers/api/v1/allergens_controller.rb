class Api::V1::AllergensController < ApplicationController

  def index
    all_allergens
    render json: {status: 'SUCCESS', message: "All Allergens", data: all_allergens}, status: :ok
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

end
