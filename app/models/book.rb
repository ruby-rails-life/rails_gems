# -*- SkipSchemaAnnotations

class Book < ApplicationRecord
  include CommonModule
  validates :title, presence: true
  # def author_name
  #  author_name if show_name?
  # end
end
