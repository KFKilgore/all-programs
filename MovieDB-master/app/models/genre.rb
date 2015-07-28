class Genre < ActiveRecord::Base
  has_many :actors
  has_many :movies

  validates :name, presence: true
  validates :name, length: {minimum: 3}
end
