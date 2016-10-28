class User < ApplicationRecord
has_secure_token
has_secure_password

require 'carrierwave/orm/activerecord'
mount_uploader :avatar, AvatarUploader
end
