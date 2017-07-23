class CreateJoinTableSimpleformFlavor < ActiveRecord::Migration[5.0]
  def change
    create_join_table :simpleforms, :flavors do |t|
      # t.index [:simpleform_id, :flavor_id]
      # t.index [:flavor_id, :simpleform_id]
    end
  end
end
