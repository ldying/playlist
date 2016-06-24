class Song < ActiveRecord::Base
  has_many :playlists
  has_many :users, through: :playlists, source: :user

  validates :title, :artist, presence: true
  validates_length_of :title, :artist,  :minimum => 2
end
