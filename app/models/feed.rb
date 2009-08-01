class Feed < ActiveRecord::Base
  
  require 'nokogiri'
  require 'open-uri'
  
  validates_presence_of :name, :url
  before_validation_on_create :get_feed_info
  
  def get_feed_info
    feed = Nokogiri::XML(open(self.url))
    self.name = feed.css('channel > title').text
  end
end
