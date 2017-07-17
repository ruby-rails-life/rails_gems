class Town < ActiveHash::Base
  include ActiveHash::Enum
  self.data = [
      {:id => 1, :name => "Columbus", :state => "NY"},
      {:id => 2, :name => "Columbus", :state => "OH"}
  ]
  enum_accessor :name, :state
end