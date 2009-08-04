class Twitter
  def parse! item
    @doc = Nokogiri::XML.parse(item.source)
    item.title = title
  end

  def title
    @doc.css('title').text
  end
end