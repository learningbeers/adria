json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :brand, :member_id
  json.url vehicle_url(vehicle, format: :json)
end
