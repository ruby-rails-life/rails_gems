# == Schema Information
#
# Table name: mountains
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Mountain < ApplicationRecord
	validates :name, presence: true
end
