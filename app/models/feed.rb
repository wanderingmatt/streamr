class Feed < ActiveRecord::Base

  require 'digest/sha1'
  require 'nokogiri'
  require 'open-uri'

  has_many :items

  validates_presence_of :name, :url

  before_validation_on_create :set_name

  named_scope :active, :conditions => { :active => true }

  def set_name
    doc = Nokogiri::XML(open(self.url))
    self.name = doc.css('title').first.text
  end

  private

  def self.refresh
    feeds = self.active

    feeds.each do |feed|
      parsed_feed = Nokogiri::XML(open(feed.url))

      parsed_feed.css('item').each do |item|
        hash = Digest::SHA1.hexdigest(item)
        Item.create(:source => item.to_xml, :salt => hash)
      end
    end
  end
end
