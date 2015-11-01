json.array!(@rifles) do |rifle|
  json.extract! rifle, :id, :name, :model, :bore, :details, :active, :make_id, :whendue_id
  json.url rifle_url(rifle, format: :json)
end
