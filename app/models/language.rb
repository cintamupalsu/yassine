class Language < ApplicationRecord
  has_many :users
  has_many :translations
  validates :country_name, presence: true, uniqueness: { case_sensitive: false }
  default_scope -> { order(country_name: :asc) }
end
