class CreateHolidays < ActiveRecord::Migration[5.0]
  def change
    create_table :holidays do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
