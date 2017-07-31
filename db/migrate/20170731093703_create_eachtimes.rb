class CreateEachtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :eachtimes do |t|
      t.string :name
      t.integer :eachtimeable_id
      t.string :eachtimeable_type

      t.timestamps
    end

    add_index :eachtimes, [:eachtimeable_id, :eachtimeable_type]
  end
end
