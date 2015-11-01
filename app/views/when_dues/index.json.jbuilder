json.array!(@when_dues) do |when_due|
  json.extract! when_due, :id, :name
  json.url when_due_url(when_due, format: :json)
end
