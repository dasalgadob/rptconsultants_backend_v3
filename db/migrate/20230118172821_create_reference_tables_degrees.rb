class CreateReferenceTablesDegrees < ActiveRecord::Migration[7.0]
  def change
    create_table :reference_tables_degrees do |t|
      t.integer :number
      t.integer :minimum
      t.integer :medium
      t.integer :maximum
      t.integer :hay_degrees
      t.integer :ggs_degrees

      t.timestamps
    end
  end
end
