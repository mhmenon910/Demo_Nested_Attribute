json.array!(@produt_types) do |produt_type|
  json.extract! produt_type, :id, :name
  json.url produt_type_url(produt_type, format: :json)
end
