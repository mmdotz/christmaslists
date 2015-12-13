json.array!(@clans) do |clan|
  json.extract! clan, :id, :name
  json.url clan_url(clan, format: :json)
end
