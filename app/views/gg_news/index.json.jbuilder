json.array!(@gg_news) do |gg_news|
  json.extract! gg_news, :classid, :imgurl, :title, :author, :filesize, :fileimg, :onclick
  json.url gg_news_url(gg_news, format: :json)
end
