# == Schema Information
#
# Table name: plants
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  color      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Plant < ApplicationRecord
	validates :name, presence: true
	belongs_to :mountain
end
