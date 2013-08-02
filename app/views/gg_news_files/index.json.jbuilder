json.array!(@gg_news_files) do |gg_news_file|
  json.extract! gg_news_file, :news_id, :downpath
  json.url gg_news_file_url(gg_news_file, format: :json)
end
