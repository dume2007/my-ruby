json.array!(@gg_classlists) do |gg_classlist|
  json.extract! gg_classlist, :classname
  json.url gg_classlist_url(gg_classlist, format: :json)
end
