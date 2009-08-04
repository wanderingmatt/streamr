class Twitter
  def parse! item
    item.type = self.class
    @doc = Nokogiri::XML.parse item.source
    item.title = get_node 'title'
    item.date = get_node 'pubDate'
    item.permalink = get_node 'link'
  end

  def get_node node
    @doc.css(node).text
  end
end