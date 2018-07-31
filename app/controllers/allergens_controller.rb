class AllergensController < ApplicationController

  def search
    @query = params[:allergen].downcase
    if @query
      @allergen = Allergen.where('name LIKE ?', "%#{@query}%")
    else
      @allergen = Allergen.all
    end
    render json: @allergen, status: 200
  end


end
