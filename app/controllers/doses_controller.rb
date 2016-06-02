class DosesController < ApplicationController
  # created using : rails generate controller doses index show new create delete
  def index
    @doses = Dose.all
  end

  def show
    @doses = Dose.fin(params[:id])
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
    respond_to do |format|
      if @dose.save
        format.html { redirect_to @dose, notice: 'Dose was successfully created.' }
        format.json { render :show, status: :created, location: @dose }
      else
        format.html { render :new }
        format.json { render json: @dose.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  private

  def dose_params
    params.require(:cocktail).permit(:description)
  end

end
