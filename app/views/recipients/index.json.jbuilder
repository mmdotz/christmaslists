json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :age, :size, :notes, :first, :last, :user_id
  json.url recipient_url(recipient, format: :json)
end
