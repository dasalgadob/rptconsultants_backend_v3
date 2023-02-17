class ReferenceTables::DegreesController < ApplicationController
  before_action :set_reference_tables_degree, only: %i[show update destroy]

  # GET /reference_tables/degrees
  def index
    @reference_tables_degrees = ReferenceTables::Degree.all

    render json: @reference_tables_degrees
  end

  # GET /reference_tables/degrees/1
  def show
    render json: @reference_tables_degree
  end

  # POST /reference_tables/degrees
  def create
    @reference_tables_degree = ReferenceTables::Degree.new(reference_tables_degree_params)

    if @reference_tables_degree.save
      render json: @reference_tables_degree, status: :created, location: @reference_tables_degree
    else
      render json: @reference_tables_degree.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reference_tables/degrees/1
  def update
    if @reference_tables_degree.update(reference_tables_degree_params)
      render json: @reference_tables_degree
    else
      render json: @reference_tables_degree.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reference_tables/degrees/1
  def destroy
    @reference_tables_degree.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reference_tables_degree
    @reference_tables_degree = ReferenceTables::Degree.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reference_tables_degree_params
    params.require(:reference_tables_degree).permit(:number, :minimum, :medium, :maximum, :hay_degrees, :ggs_degrees)
  end
end
