class CreateParanoids < ActiveRecord::Migration[5.0]
  def change
    create_table :paranoids do |t|
      t.string :title
      t.references :paranoiac, foreign_key: true

      t.timestamps
    end
  end
end
