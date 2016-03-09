json.array!(@representantens) do |representanten|
  json.extract! representanten, :id, :nombre
  json.url representanten_url(representanten, format: :json)
end
