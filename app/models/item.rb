class Item < ActiveRecord::Base
  belongs_to :feed
  
  def initialize item
    
  end
end
