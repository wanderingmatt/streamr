class StreamController < ApplicationController
  def index
    @items = Item.all(:conditions => { :published => true }, :order => 'created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @items }
    end
  end
end
