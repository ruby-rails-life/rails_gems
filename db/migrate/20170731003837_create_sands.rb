class CreateSands < ActiveRecord::Migration[5.0]
  def change
    create_table :sands do |t|
      t.string :name

      t.timestamps
    end
  end
end
