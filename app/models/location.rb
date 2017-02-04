class Location < ApplicationRecord
  validates :latitude, :longitude, presence: true
  validates :latitude, :longitude, numericality: true

  has_many :sound_treks
  has_many :playlists, through: :sound_treks
  has_many :trekkers, through: :playlists, source: :creator

end
