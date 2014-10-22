json.array!(@ordens) do |orden|
  json.extract! orden, :id, :fecha_uso, :user_id
  json.url orden_url(orden, format: :json)
end
