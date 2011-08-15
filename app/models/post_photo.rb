class PostPhoto < ActiveRecord::Base
  belongs_to :post
  mount_uploader :photo, PhotoUploader
end