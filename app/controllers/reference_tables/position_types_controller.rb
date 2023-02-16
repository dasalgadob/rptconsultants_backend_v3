class ReferenceTables::PositionTypesController < ApplicationController
  before_action :set_reference_tables_position_type, only: %i[ show update destroy ]

  # GET /reference_tables/position_types
  def index
    @reference_tables_position_types = ReferenceTables::PositionType.all

    render json: @reference_tables_position_types
  end

  # GET /reference_tables/position_types/1
  def show
    render json: @reference_tables_position_type
  end

  # POST /reference_tables/position_types
  def create
    @reference_tables_position_type = ReferenceTables::PositionType.new(reference_tables_position_type_params)

    if @reference_tables_position_type.save
      render json: @reference_tables_position_type, status: :created, location: @reference_tables_position_type
    else
      render json: @reference_tables_position_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reference_tables/position_types/1
  def update
    if @reference_tables_position_type.update(reference_tables_position_type_params)
      render json: @reference_tables_position_type
    else
      render json: @reference_tables_position_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reference_tables/position_types/1
  def destroy
    @reference_tables_position_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_tables_position_type
      @reference_tables_position_type = ReferenceTables::PositionType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reference_tables_position_type_params
      params.require(:reference_tables_position_type).permit(:name, :minimum_degree, :maximum_degree)
    end
end
