class Country < ActiveHash::Base
  field :name
  create :id => 1, :name => "US"
  create :id => 2, :name => "Canada"
end