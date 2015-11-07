json.array!(@pickup_adults) do |pickup_adult|
  json.extract! pickup_adult, :id, :name, :description, :picture
  json.url pickup_adult_url(pickup_adult, format: :json)
end
