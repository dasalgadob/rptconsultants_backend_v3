class ReferenceTables::SubsectorsController < ApplicationController
  before_action :set_reference_tables_subsector, only: %i[show update destroy]

  # GET /reference_tables/subsectors
  def index
    @reference_tables_subsectors = ReferenceTables::Subsector.all

    render json: @reference_tables_subsectors
  end

  # GET /reference_tables/subsectors/1
  def show
    render json: @reference_tables_subsector
  end

  # POST /reference_tables/subsectors
  def create
    @reference_tables_subsector = ReferenceTables::Subsector.new(reference_tables_subsector_params)

    if @reference_tables_subsector.save
      render json: @reference_tables_subsector, status: :created, location: @reference_tables_subsector
    else
      render json: @reference_tables_subsector.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reference_tables/subsectors/1
  def update
    if @reference_tables_subsector.update(reference_tables_subsector_params)
      render json: @reference_tables_subsector
    else
      render json: @reference_tables_subsector.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reference_tables/subsectors/1
  def destroy
    @reference_tables_subsector.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reference_tables_subsector
    @reference_tables_subsector = ReferenceTables::Subsector.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reference_tables_subsector_params
    params.require(:reference_tables_subsector).permit(:name, :reference_tables_sector_id)
  end
end
