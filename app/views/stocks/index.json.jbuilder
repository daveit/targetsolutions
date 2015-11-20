json.array!(@stocks) do |stock|
  json.extract! stock, :id, :name, :model, :details, :active, :due_id, :make_id
  json.url stock_url(stock, format: :json)
end
