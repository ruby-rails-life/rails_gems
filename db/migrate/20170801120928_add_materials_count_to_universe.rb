class AddMaterialsCountToUniverse < ActiveRecord::Migration[5.0]
  def change
  	add_column :universes, :materials_count, :integer
  end
end
