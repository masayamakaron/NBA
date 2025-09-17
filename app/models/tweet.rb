class Tweet < ApplicationRecord
    mount_uploader :video, VideoUploader
     belongs_to :user
     has_many :likes, dependent: :destroy
     has_many :liked_users, through: :likes, source: :user
     has_many :comments, dependent: :destroy

end
