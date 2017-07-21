class CreateParanoiacs < ActiveRecord::Migration[5.0]
  def change
    create_table :paranoiacs do |t|
      t.string :name

      t.timestamps
    end
  end
end
