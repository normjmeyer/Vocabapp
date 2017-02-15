class Dictionary < ApplicationRecord
  validates :name, :language, :presence => true
  validates :name, :uniqueness => true
end
