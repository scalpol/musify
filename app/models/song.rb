class Song < ApplicationRecord
  belongs_to :playlist
  validates :name, :name, presence: true
end
