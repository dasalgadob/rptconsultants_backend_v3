class CreateReferenceTablesSectors < ActiveRecord::Migration[7.0]
  def change
    create_table :reference_tables_sectors do |t|
      t.string :name

      t.timestamps
    end
  end
end
