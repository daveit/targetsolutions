json.array!(@rifles) do |rifle|
  json.extract! rifle, :id, :name, :model, :bore, :details, :active, :make_id, :due_id
  json.url rifle_url(rifle, format: :json)
end
