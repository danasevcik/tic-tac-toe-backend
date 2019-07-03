class User < ApplicationRecord
  has_many :sessions

  validates :name, uniqueness: true
  validates :name, presence: true
end
