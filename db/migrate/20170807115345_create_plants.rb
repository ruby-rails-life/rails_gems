class CreatePlants < ActiveRecord::Migration[5.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.integer :age
      t.string :color

      t.timestamps
    end
  end
end
