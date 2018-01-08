class Chapter < ApplicationRecord
  has_many :verses, dependent: :destroy
  has_many :translations
end
