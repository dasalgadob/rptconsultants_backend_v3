class ReferenceTables::SectorsController < ApplicationController
  before_action :set_reference_tables_sector, only: %i[show update destroy]

  # GET /reference_tables/sectors
  def index
    @reference_tables_sectors = ReferenceTables::Sector.all

    render json: @reference_tables_sectors
  end

  # GET /reference_tables/sectors/1
  def show
    render json: @reference_tables_sector
  end

  # POST /reference_tables/sectors
  def create
    @reference_tables_sector = ReferenceTables::Sector.new(reference_tables_sector_params)

    if @reference_tables_sector.save
      render json: @reference_tables_sector, status: :created, location: @reference_tables_sector
    else
      render json: @reference_tables_sector.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reference_tables/sectors/1
  def update
    if @reference_tables_sector.update(reference_tables_sector_params)
      render json: @reference_tables_sector
    else
      render json: @reference_tables_sector.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reference_tables/sectors/1
  def destroy
    @reference_tables_sector.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reference_tables_sector
    @reference_tables_sector = ReferenceTables::Sector.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reference_tables_sector_params
    params.require(:reference_tables_sector).permit(:name)
  end
end
