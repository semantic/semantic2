class Tag < ActiveRecord::Base
  has_many :taggables
  has_many :episodes, :through => :taggables

  validates_presence_of :title
end
