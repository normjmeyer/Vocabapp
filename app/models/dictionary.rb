class Dictionary < ApplicationRecord
  validates :name, :language, :presence => true
end
