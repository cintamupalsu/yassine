class Verse < ApplicationRecord
  has_many :translations
  belongs_to :chapter
  default_scope -> { order(number: :asc) }
end
