class CreateSimpleforms < ActiveRecord::Migration[5.0]
  def change
    create_table :simpleforms do |t|
      t.string :name
      t.text :content
      t.boolean :popular
      t.string :season_suitable
      t.date :production_date

      t.timestamps
    end
  end
end
