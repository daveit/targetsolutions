json.array!(@barrels) do |barrel|
  json.extract! barrel, :id, :name, :model, :details, :twist, :due_id, :make_id
  json.url barrel_url(barrel, format: :json)
end
