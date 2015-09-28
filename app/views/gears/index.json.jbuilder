json.array!(@gears) do |gear|
  json.extract! gear, :id, :item, :description, :size, :brand, :price
  json.url gear_url(gear, format: :json)
end
