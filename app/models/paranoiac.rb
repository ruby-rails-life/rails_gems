# == Schema Information
#
# Table name: paranoiacs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  deleted_at :datetime
#  respect    :boolean
#
# Indexes
#
#  index_paranoiacs_on_deleted_at  (deleted_at)
#

class Paranoiac < ApplicationRecord
	#acts_as_paranoid :recover_dependent_associations => false
	acts_as_paranoid
	scope :respect,  ->{where(:respect => true)}
	#has_many :paranoids, :dependent => :destroy
	has_many :paranoids
	validates_as_paranoid
    validates_uniqueness_of_without_deleted :name
end
