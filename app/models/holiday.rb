# == Schema Information
#
# Table name: holidays
#
#  id         :integer          not null, primary key
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Holiday < ApplicationRecord
  validates :date, presence: true
end
