class AddSectorIdToSubsector < ActiveRecord::Migration[7.0]
  def change
    add_reference :reference_tables_subsectors, :reference_tables_sector,
                  null: false, foreign_key: true,
                  index: { name: 'index_subsector_on_sector_id' }
  end
end
