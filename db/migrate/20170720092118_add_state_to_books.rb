class AddStateToBooks < ActiveRecord::Migration[5.0]
  def change
  	add_column :books, :state, :string
  end
end
