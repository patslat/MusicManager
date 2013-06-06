class Track < ActiveRecord::Base
  attr_accessible :album_id, :name, :bonus, :lyrics
  belongs_to :album
end
