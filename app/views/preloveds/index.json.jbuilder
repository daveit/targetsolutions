json.array!(@preloveds) do |preloved|
  json.extract! preloved, :id, :name, :model, :price, :details, :active, :make_id
  json.url preloved_url(preloved, format: :json)
end
