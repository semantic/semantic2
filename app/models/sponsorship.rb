class Sponsorship < ActiveRecord::Base
  belongs_to :episode
  belongs_to :sponsor
end
