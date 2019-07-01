json.extract! car, :id, :picture, :make, :model, :year, :km, :price, :color, :registration, :description, :fuel_type, :transmission_type, :location, :created_at, :updated_at
json.url car_url(car, format: :json)
