class AddDeletedAtToParanoiac < ActiveRecord::Migration[5.0]
  def change
    add_column :paranoiacs, :deleted_at, :datetime
    add_index :paranoiacs, :deleted_at
  end
end
