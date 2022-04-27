class Post < ApplicationRecord
    validates_presence_of :title, :image, :description
    belongs_to :user
    mount_uploader :image, PhotoUploader
end
