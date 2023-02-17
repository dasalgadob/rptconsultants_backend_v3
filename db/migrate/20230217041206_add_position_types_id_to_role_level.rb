class AddPositionTypesIdToRoleLevel < ActiveRecord::Migration[7.0]
  def change
    add_reference :reference_tables_role_levels, :reference_tables_position_type, null: false, foreign_key: true, index: { name: 'index_role_levels_on_position_type_id'}
  end
end
