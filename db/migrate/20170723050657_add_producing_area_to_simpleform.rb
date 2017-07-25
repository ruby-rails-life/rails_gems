class AddProducingAreaToSimpleform < ActiveRecord::Migration[5.0]
  def change
    add_column :simpleforms, :producing_area, :string
  end
end
