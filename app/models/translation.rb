class Translation < ApplicationRecord
  belongs_to :language
  belongs_to :verse
  belongs_to :chapter
end
