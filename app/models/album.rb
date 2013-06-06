class Album < ActiveRecord::Base
  attr_accessible :band_id, :name, :recording
  has_many :tracks
  belongs_to :band
end
