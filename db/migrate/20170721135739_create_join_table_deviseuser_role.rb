class CreateJoinTableDeviseuserRole < ActiveRecord::Migration[5.0]
  def change
    create_join_table :deviseusers, :roles do |t|
      # t.index [:deviseuser_id, :role_id]
      # t.index [:role_id, :deviseuser_id]
    end
  end
end
