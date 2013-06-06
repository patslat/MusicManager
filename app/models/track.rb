class Track < ActiveRecord::Base
  attr_accessible :album_id, :name, :bonus, :lyrics
  has_many :notes
  belongs_to :album
end
