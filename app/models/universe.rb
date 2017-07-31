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
  has_many :materials, dependent: :destroy
  has_and_belongs_to_many :sands
  validates :name, presence: true	
end