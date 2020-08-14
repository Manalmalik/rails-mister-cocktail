class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
  end

  private
  def dose_params
    param.require(:dose).(:description)
  end
end
