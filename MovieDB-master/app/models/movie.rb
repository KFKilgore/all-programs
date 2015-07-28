class Movie < ActiveRecord::Base
  belongs_to :actor
  belongs_to :genre

  validates :name, :description, :rating, uniqueness: true
  validates :rating, presence: true
  validates :rating, exclusion: {in: %w(x), message: '%{value} is reserved.'}
end
