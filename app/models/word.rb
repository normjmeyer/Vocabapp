class Word < ApplicationRecord
  validates :name, :language, :definition, :presence => true
  belongs_to :dictionary
end
