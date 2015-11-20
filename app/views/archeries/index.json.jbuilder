json.array!(@archeries) do |archery|
  json.extract! archery, :id, :name, :model, :details, :active, :due_id, :make_id
  json.url archery_url(archery, format: :json)
end
