json.array!(@webpages) do |webpage|
  json.extract! webpage, :id, :name, :pagemd, :sidebar, :sidebarmd
  json.url webpage_url(webpage, format: :json)
end
