class CreateReferenceTablesPositionTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :reference_tables_position_types do |t|
      t.string :name
      t.integer :minimum_degree
      t.integer :maximum_degree

      t.timestamps
    end
  end
end
