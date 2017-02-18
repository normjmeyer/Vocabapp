class Dictionary < ApplicationRecord
  validates :name, :language, :presence => true
  validates :name, :uniqueness => true

  has_many :words
end
