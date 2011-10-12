class Episode < ActiveRecord::Base
  mount_uploader :file, EpisodeUploader
  mount_uploader :image, ImageUploader

  has_many :sponsorships
  has_many :sponsors, :through => :sponsorships
  has_many :taggables
  has_many :tags, :through => :taggables

  validates_presence_of :title
  validates :number, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1 }, :presence => true
  validates_presence_of :file
  validates_presence_of :permalink
  validates_presence_of :image
end
