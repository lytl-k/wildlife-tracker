class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :sightings

  before_save do
    self.email = email.downcase
  end

  validates :username,  presence: true, length: { maximum: 50 },
                        uniqueness: { case_sensitive: false }
  validates :email,     presence: true, length: { maximum: 255 },
                        format: { with: VALID_EMAIL_REGEX },
                        uniqueness: { case_sensitive: false }
  validates :password,  presence: true, length: { minimum: 6 }

  has_secure_password
end
