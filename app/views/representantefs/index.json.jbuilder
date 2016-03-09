json.array!(@representantefs) do |representantef|
  json.extract! representantef, :id, :nombre
  json.url representantef_url(representantef, format: :json)
end
