json.array!(@gg_news_contents) do |gg_news_content|
  json.extract! gg_news_content, :news_id, :content, :extra
  json.url gg_news_content_url(gg_news_content, format: :json)
end
