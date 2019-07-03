class User < ApplicationRecord
  has_many :sessions

  validates :name, uniqueness: true
end
