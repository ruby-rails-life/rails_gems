class Paranoiac < ApplicationRecord
	#acts_as_paranoid :recover_dependent_associations => false
	acts_as_paranoid
	scope :respect,  ->{where(:respect => true)}
	#has_many :paranoids, :dependent => :destroy
	has_many :paranoids
	validates_as_paranoid
    validates_uniqueness_of_without_deleted :name
end