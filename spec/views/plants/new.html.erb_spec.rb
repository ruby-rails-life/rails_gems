require 'rails_helper'

RSpec.describe "plants/new", type: :view do
  before(:each) do
    assign(:plant, Plant.new(
      :name => "MyString",
      :age => 1,
      :color => "MyString"
    ))
  end

  it "renders new plant form" do
    render

    assert_select "form[action=?][method=?]", plants_path, "post" do

      assert_select "input#plant_name[name=?]", "plant[name]"

      assert_select "input#plant_age[name=?]", "plant[age]"

      assert_select "input#plant_color[name=?]", "plant[color]"
    end
  end
end
