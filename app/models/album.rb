# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  song_id    :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  attr_accessible :name, :image, :artist_ids
  has_many  :songs
  has_many  :artists, :through => :songs
  has_and_belongs_to_many :users
  validates  :name, :image, :presence => true
end
