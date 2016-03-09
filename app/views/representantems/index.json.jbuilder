json.array!(@representantems) do |representantem|
  json.extract! representantem, :id, :nombre
  json.url representantem_url(representantem, format: :json)
end
