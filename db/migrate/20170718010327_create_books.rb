class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.string :author_name_flag
      t.string :del_flag

      t.timestamps
    end
  end
end
