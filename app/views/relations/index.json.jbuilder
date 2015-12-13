json.array!(@relations) do |relation|
  json.extract! relation, :id, :user_id, :clan_id
  json.url relation_url(relation, format: :json)
end
