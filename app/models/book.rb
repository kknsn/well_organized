class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :user

  validates :title, :thought, presence: true
  validates :genre_id, numericality: { other_than: 1 } 
end
