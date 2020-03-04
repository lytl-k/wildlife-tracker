class AnimalType < ApplicationRecord
  has_many :animals

  validates :name,  presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
end
