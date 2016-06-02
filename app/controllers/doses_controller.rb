class DosesController < ApplicationController
  # created using : rails generate controller doses index show new create delete
  #before_action :find_cocktails, only: [ :new, :create ]

  def index
    @doses = Dose.all
  end

  def show
    find_cocktail
    @dose = Dose.find(params[:id])
  end

  def new
    find_cocktail
    @dose = Dose.new
  end

  def create
    find_cocktail
    # il faut créer une dose consolidée avec les données cocktails
    @dose = @cocktail.doses.build(dose_params)
    respond_to do |format|
      if @dose.save
        format.html { redirect_to @cocktail, notice: 'Dose was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        format.html { render :new }
        format.json { render json: @cocktail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :name, :cocktail_id, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
