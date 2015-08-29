json.array!(@travels) do |travel|
  json.extract! travel, :id, :name, :source_city_id, :dest_city_id, :cost, :distance, :duration
  json.url travel_url(travel, format: :json)
end
