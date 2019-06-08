json.extract! pedido, :id, :clienteId, :nome, :descricao, :status, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
