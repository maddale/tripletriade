class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

  extend Enumerize
  enumerize :sex, in: [:male, :female]

  mount_uploader :avatar, AvatarUploader
 
end
