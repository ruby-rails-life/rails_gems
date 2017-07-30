# == Schema Information
#
# Table name: universes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Universe < ApplicationRecord
  has_many :materials
  validates :name, presence: true	
end
