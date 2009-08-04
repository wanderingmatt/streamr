class Item < ActiveRecord::Base
  belongs_to :feed

  attr_accessor :title, :date, :permalink

  def pretty
    determine_type.parse! self
  end

  def determine_type
    case self.feed.url
    when /twitter/
      Twitter.new
    end
  end
end
