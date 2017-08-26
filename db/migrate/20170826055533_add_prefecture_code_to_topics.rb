class AddPrefectureCodeToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :prefecture_code, :integer
  end
end
