class Sighting < ApplicationRecord
  belongs_to :animal
  belongs_to :region
  belongs_to :user

  validates :longitude,   presence: true
  validates :latitude,    presence: true
end
