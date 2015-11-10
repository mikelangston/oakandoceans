json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :profile_image, :screen_name, :age, :birth_day, :birth_month, :birth_year
  json.url profile_url(profile, format: :json)
end
