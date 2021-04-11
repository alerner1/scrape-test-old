class Source < ApplicationRecord
  has_many :show_sources
  has_many :shows, through: :show_sources
end
