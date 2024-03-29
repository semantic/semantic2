class Sponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader

  has_many :sponsorships
  has_many :episodes, :through => :sponsorships

  validates_presence_of :name
  validates_presence_of :logo
  validates :amount, :numericality => { :greater_than_or_equal_to => 0.0 }, :presence => true
end
