class Region < ApplicationRecord
  has_many :sightings

  validates :name,  presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
end
