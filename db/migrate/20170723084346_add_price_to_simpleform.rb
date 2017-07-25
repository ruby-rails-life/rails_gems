class AddPriceToSimpleform < ActiveRecord::Migration[5.0]
  def change
    add_column :simpleforms, :price, :integer
  end
end
