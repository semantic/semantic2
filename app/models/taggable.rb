class Taggable < ActiveRecord::Base
  belongs_to :episode
  belongs_to :tag
end
