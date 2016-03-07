json.array!(@reloadings) do |reloading|
  json.extract! reloading, :id, :name, :model, :quantity, :price, :details, :active, :due_id, :make_id
  json.url reloading_url(reloading, format: :json)
end
