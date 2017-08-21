FactoryGirl.define do
  sequence (:faker_name) {Faker::Name.name}
  sequence (:faker_color) {Faker::Color.color_name}
end