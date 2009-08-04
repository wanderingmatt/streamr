class Twitter
  def parse! item
    @doc = Nokogiri::XML.parse(item.source)
    item.title = title
    item.date = date
    item.permalink = link
  end

  def title
    @doc.css('title').text
  end

  def date
    @doc.css('pubDate').text
  end

  def link
    @doc.css('link').text
  end
end