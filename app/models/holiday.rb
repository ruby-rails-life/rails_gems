class Holiday < ApplicationRecord
	validates :date, presence: true
end
