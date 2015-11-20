json.array!(@triggers) do |trigger|
  json.extract! trigger, :id, :name, :model, :details, :active, :due_id, :make_id
  json.url trigger_url(trigger, format: :json)
end
