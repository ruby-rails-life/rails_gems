class CreateLifeUniverses < ActiveRecord::Migration[5.0]
  def change
    create_table :life_universes do |t|
      t.references :life, foreign_key: true
      t.references :universe, foreign_key: true

      t.timestamps
    end
  end
end
