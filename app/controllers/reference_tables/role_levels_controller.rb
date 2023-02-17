class ReferenceTables::RoleLevelsController < ApplicationController
  before_action :set_reference_tables_role_level, only: %i[ show update destroy ]

  # GET /reference_tables/role_levels
  def index
    @reference_tables_role_levels = ReferenceTables::RoleLevel.all

    render json: @reference_tables_role_levels
  end

  # GET /reference_tables/role_levels/1
  def show
    render json: @reference_tables_role_level
  end

  # POST /reference_tables/role_levels
  def create
    @reference_tables_role_level = ReferenceTables::RoleLevel.new(reference_tables_role_level_params)

    if @reference_tables_role_level.save
      render json: @reference_tables_role_level, status: :created, location: @reference_tables_role_level
    else
      render json: @reference_tables_role_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reference_tables/role_levels/1
  def update
    if @reference_tables_role_level.update(reference_tables_role_level_params)
      render json: @reference_tables_role_level
    else
      render json: @reference_tables_role_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reference_tables/role_levels/1
  def destroy
    @reference_tables_role_level.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_tables_role_level
      @reference_tables_role_level = ReferenceTables::RoleLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reference_tables_role_level_params
      params.require(:reference_tables_role_level).permit(:name, :reference_tables_degree_id, :reference_tables_position_type_id)
    end
end
