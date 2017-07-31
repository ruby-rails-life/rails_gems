class CreateJoinTableSandUniverse < ActiveRecord::Migration[5.0]
  def change
    create_join_table :sands, :universes do |t|
        t.index [:sand_id, :universe_id]
        t.index [:universe_id, :sand_id]
    end
  end
end
