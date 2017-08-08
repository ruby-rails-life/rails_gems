# == Schema Information
#
# Table name: mountains
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  age        :integer
#

FactoryGirl.define do
  factory :mountain do
    name "hello_mountain"
    age 16
    # initialize_with { new name }
    # initialize_with { new attributes }
  end
  
  factory :association_mountain, class: Mountain do
    name "association_mountain"
    age 20
  end
end
