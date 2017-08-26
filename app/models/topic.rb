# == Schema Information
#
# Table name: topics
#
#  id              :integer          not null, primary key
#  title           :string(255)
#  content         :text(65535)
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  prefecture_code :integer
#
# Indexes
#
#  index_topics_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Topic < ApplicationRecord
  belongs_to :user

  #include JpPrefecture
  #jp_prefecture :prefecture_code

  def prefecture_name
    JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
  end

  def prefecture_name=(prefecture_name)
    self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code if prefecture_name.present?
    self.prefecture_code = nil if prefecture_name.blank?
  end

end
