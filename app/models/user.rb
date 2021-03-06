class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #relations
      has_many :posts
      has_many :comments

      #uploaders
      mount_uploader :avatar, AvatarUploader
end
