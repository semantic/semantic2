class Episode < ActiveRecord::Base
  mount_uploader :file, EpisodeUploader

  has_many :sponsorships
  has_many :sponsors, :through => :sponsorships

  validates_presence_of :title
  validates :number, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1 }, :presence => true
  validates_presence_of :file
  validates_presence_of :permalink
end
