class Recipe < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..10 }

end
