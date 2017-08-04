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

class Mountain < ApplicationRecord
  validates :name, presence: true
  def initialize(name:, age:)
    @name = name
    @age = age
  end
  def greet
    if @age.blank?
      "年齢不明"	
    elsif @age <= 12
      "ぼくは#{@name}だよ。"
    else
      "僕は#{@name}です。"
    end
  end
end
