require 'net/http'
require 'uri'

class Show < ApplicationRecord
  has_many :show_sources
  has_many :sources, through: :show_sources

  def get_sources
    response = Net::HTTP.get(URI.parse("https://reelgood.com/show/100-years-of-horror-1996"))
    parsed_data = Nokogiri::HTML.parse(response)

    listings = parsed_data.attr_includes('title', 'Choose an episode')

    web_sources = listings.map do |listing|
      listing.at_css('span').text
    end

    web_sources.each do |web_source| 
      @source = Source.find_or_create_by(name: web_source)
      ShowSource.create(show: self, source: @source)
    end
  end
end
