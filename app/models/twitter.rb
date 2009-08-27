class Twitter
  def parse! item
    item.type = self.class.to_s.downcase
    @doc = Nokogiri::XML.parse item.source
    item.title = (get_node 'title').gsub('WanderingMatt: ', '') # TODO Make this a setting
    item.date = get_node 'pubDate'
    item.permalink = get_node 'link'
  end

  def get_node node
    @doc.css(node).first.text
  end
end