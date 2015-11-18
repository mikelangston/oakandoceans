json.array!(@venues) do |venue|
  json.extract! venue, :id, :group_id, :name, :state, :city, :street_address
  json.url venue_url(venue, format: :json)
end
