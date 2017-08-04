# == Schema Information
#
# Table name: mountains
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Mountain, type: :model do
  it "isn't valid without name" do
    mountain = Mountain.new
    expect(mountain).not_to be_valid
  end
end
