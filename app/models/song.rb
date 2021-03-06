# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  album_id   :integer
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cost       :decimal(, )      default(1.0)
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :genre_ids, :cost, :mixtape_ids
  belongs_to  :album
  belongs_to  :artist
  has_and_belongs_to_many :mixtapes
  has_and_belongs_to_many :genres
  validates :cost, :numericality => { :greater_than_or_equal_to => 0 }

end