class Sponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader

  validates_presence_of :name
  validates_presence_of :logo
end
