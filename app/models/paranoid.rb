class Paranoid < ApplicationRecord
  belongs_to :paranoiac
  #acts_as_paranoid :dependent_recovery_window => 1.minutes
  belongs_to :paranoiac_including_deleted, :class_name => "Paranoiac", :foreign_key => 'paranoiac_id', :with_deleted => true
end
