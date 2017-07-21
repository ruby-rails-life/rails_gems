class AddDeletedAtToParanoid < ActiveRecord::Migration[5.0]
  def change
    add_column :paranoids, :deleted_at, :datetime
    add_index :paranoids, :deleted_at
  end
end
