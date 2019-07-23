class User < ApplicationRecord
  
  has_secure_password
  has_many :sessions

  validates :username, uniqueness: { case_sensitive: false }
  validates :name, uniqueness: true
  validates :name, presence: true
end
