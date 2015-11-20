json.array!(@optics) do |optic|
  json.extract! optic, :id, :name, :model, :details, :active, :due_id, :make_id
  json.url optic_url(optic, format: :json)
end
