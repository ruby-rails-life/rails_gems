class AddSimpleformpToSimpleforms < ActiveRecord::Migration[5.0]
  def change
    add_reference :simpleforms, :simpleformp, foreign_key: true, index: true
  end
end
