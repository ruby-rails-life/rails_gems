class Country < ActiveHash::Base
  include ActiveHash::Associations
  has_many :people
  
  field :name
  create :id => 1, :name => "US"
  create :id => 2, :name => "Canada"
end