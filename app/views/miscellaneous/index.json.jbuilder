json.array!(@miscellaneous) do |miscellaneou|
  json.extract! miscellaneou, :id, :name, :model, :details, :active, :due_id, :make_id
  json.url miscellaneou_url(miscellaneou, format: :json)
end
