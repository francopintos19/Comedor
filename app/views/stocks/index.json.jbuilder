json.array!(@stocks) do |stock|
  json.extract! stock, :id, :cantidad, :producto_id
  json.url stock_url(stock, format: :json)
end
