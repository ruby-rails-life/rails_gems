class Comment < ApplicationRecord
  belongs_to :article
  sifter :name_contains do |string|
    commenter =~ "%#{string}%"
  end
end
