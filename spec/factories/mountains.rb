FactoryGirl.define do
  factory :mountain do
    name "hello_mountain"
    age 16
    initialize_with { new attributes }
  end
end
