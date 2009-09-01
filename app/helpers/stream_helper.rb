module StreamHelper
  def create_video type, content
    case type
    when 'youtube'
      url = "http://www.youtube.com/v/#{content}&hl=en&fs=1&"
    end
    <<-html
      <object width="560" height="340">
        <param name="movie" value="#{url}"></param>
        <param name="allowFullScreen" value="true"></param>
        <param name="allowscriptaccess" value="always"></param>
        <embed src="#{url}" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="560" height="340"></embed>
      </object>
    html
  end
end
