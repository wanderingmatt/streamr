class Item < ActiveRecord::Base
  belongs_to :feed

  attr_accessor :type, :title, :date, :permalink, :content

  def pretty
    determine_type.parse! self
  end

  def determine_type
    case self.feed.url
    when /twitter/
      Twitter.new
    when /flickr/
      Flickr.new
    else
      Rss.new
    end
  end
end
