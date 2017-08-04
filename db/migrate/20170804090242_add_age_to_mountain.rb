class AddAgeToMountain < ActiveRecord::Migration[5.0]
  def change
    add_column :mountains, :age, :integer
  end
end
