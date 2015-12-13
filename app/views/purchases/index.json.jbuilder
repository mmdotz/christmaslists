json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :item, :url, :vendor, :cost, :tracking_num, :bought, :user_id
  json.url purchase_url(purchase, format: :json)
end
