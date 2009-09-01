class Youtube
  def parse! item
    item.type = self.class.to_s.downcase
    @doc = Nokogiri::XML.parse item.source
    item.title = get_node 'title'
    item.date = get_node 'published'
    item.permalink = @doc.at('link')['href']
    item.permalink =~ /\?v=(.+)/
    item.content = $1
end

  def get_node node
    @doc.css(node).first.text
  end
end