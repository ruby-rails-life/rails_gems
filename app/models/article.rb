class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  mount_uploaders :muti_picture, PictureUploader
  validates :title, presence: true,
                    length: { minimum: 5 }
  validate  :picture_size

  private

    # アップロードされた画像のサイズをバリデーションする
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

end
