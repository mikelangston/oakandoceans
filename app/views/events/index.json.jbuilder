json.array!(@events) do |event|
  json.extract! event, :id, :group_id, :name, :venue_id, :date
  json.url event_url(event, format: :json)
end
