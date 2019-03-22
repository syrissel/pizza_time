class Image < ApplicationRecord
  belongs_to :pizza, optional: true
  belongs_to :deal, optional: true

  mount_uploader :path, ImageUploader
end
