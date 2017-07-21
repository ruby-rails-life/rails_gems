class AddRespectToParanoiac < ActiveRecord::Migration[5.0]
  def change
    add_column :paranoiacs, :respect, :boolean
  end
end
