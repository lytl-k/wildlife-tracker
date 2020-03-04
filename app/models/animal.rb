class Animal < ApplicationRecord
  belongs_to :animal_type

  validates :name,  presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
end
