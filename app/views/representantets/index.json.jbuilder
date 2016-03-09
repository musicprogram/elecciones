json.array!(@representantets) do |representantet|
  json.extract! representantet, :id, :nombre
  json.url representantet_url(representantet, format: :json)
end
