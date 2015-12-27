json.array!(@budgets) do |budget|
  json.extract! budget, :id, :year, :amount, :user, :belongs_to
  json.url budget_url(budget, format: :json)
end
