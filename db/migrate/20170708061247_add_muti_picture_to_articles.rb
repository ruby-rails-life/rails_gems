class AddMutiPictureToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :muti_picture, :json
  end
end
